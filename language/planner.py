import subprocess
import os
import re
from collections import namedtuple
import instantiate
import normalize
import copy
import pddl

DEFAULT_MAX_TIME = 30 # INF
DEFAULT_PLANNER = 'ff-astar'
FD_PATH = "./downward"

class MockSet(object):
	def __init__(self, test=lambda item: True):
		self.test = test
	def __contains__(self, item):
		return self.test(item)


def find_plan(domain_file, problem_file):
	FD_BIN = "./downward/fast-downward.py"
	commandline_args = "--plan-file plan --alias seq-sat-lama-2011"
	proc = subprocess.Popen("%s %s %s %s" % (FD_BIN, commandline_args, domain_file, problem_file), stdout=subprocess.PIPE, shell=True, cwd=None, close_fds=True)
	output, error = proc.communicate()
	plan_file = "./plan.1"
	solution = parse_solution(plan_file)
	return solution

##################################################
Action = namedtuple('Action', ['name', 'args'])

def parse_action(line):
	entries = line.strip('( )').split(' ')
	name = entries[0]
	args = tuple(entries[1:])
	return Action(name, args)

def parse_solution(solution_file):
	with open(solution_file, 'r') as f:
		solution = f.read()

	#action_regex = r'\((\w+(\s+\w+)\)' # TODO: regex
	if solution is None:
		return None, cost
	cost_regex = r'cost\s*=\s*(\d+)'
	matches = re.findall(cost_regex, solution)
	# TODO: recover the actual cost of the plan from the evaluations
	lines = solution.split('\n')[:-2]  # Last line is newline, second to last is cost
	plan = list(map(parse_action, lines))
	print("plan:"+str(plan))
	return plan

def literal_holds(state, literal):
	#return (literal in state) != literal.negated
	return (literal.positive() in state) != literal.negated

def conditions_hold(state, conditions):
	return all(literal_holds(state, cond) for cond in conditions)

def apply_action(state, action):
	print(state.init)
	print(action)
	state = set(state.init)
	assert(isinstance(action, pddl.PropositionalAction))
	# TODO: signed literals
	for conditions, effect in action.del_effects:
		if conditions_hold(state, conditions):
			state.discard(effect)
	for conditions, effect in action.add_effects:
		if conditions_hold(state, conditions):
			state.add(effect)
	return state


def task_from_domain_problem(domain, problem):
	task_name, task_domain_name, task_requirements, objects, init, goal, use_metric = problem

	assert domain.name == task_domain_name
	requirements = pddl.Requirements(sorted(set(domain.requirements.requirements +
												task_requirements.requirements)))
	objects = domain.constants + objects
	init.extend(pddl.Atom("=", (obj.name, obj.name)) for obj in objects)

	task = pddl.Task(domain.name, task_name, requirements, domain.types, objects,
					 domain.predicates, domain.functions, init, goal,
					 domain.actions, domain.axioms, use_metric)
	normalize.normalize(task)
	# task.add_axiom
	return task

def find_unique(test, sequence):
	found, value = False, None
	for item in sequence:
		if test(item):
			if found:
				raise RuntimeError('Both elements {} and {} satisfy the test'.format(value, item))
			found, value = True, item
	if not found:
		raise RuntimeError('Unable to find an element satisfying the test')
	return value

def pddl_from_object(obj):
    if isinstance(obj, str):
        return obj
    return obj.pddl
    	
def get_function_assignments(task):
	return {f.fluent: f.expression for f in task.init
			if isinstance(f, pddl.f_expression.FunctionAssignment)}

def get_action_instances(task, action_plan):
	type_to_objects = instantiate.get_objects_by_type(task.objects, task.types)
	function_assignments = get_function_assignments(task)
	fluent_facts = MockSet()
	init_facts = set()
	action_instances = []
	for name, objects in action_plan:
		# TODO: what if more than one action of the same name due to normalization?
		# Normalized actions have same effects, so I just have to pick one
		action = find_unique(lambda a: a.name == name, task.actions)
		args = list(map(pddl_from_object, objects))
		assert (len(action.parameters) == len(args))
		variable_mapping = {p.name: a for p, a in zip(action.parameters, args)}
		instance = action.instantiate(variable_mapping, init_facts,
									  fluent_facts, type_to_objects,
									  task.use_min_cost_metric, function_assignments)
		assert (instance is not None)
		action_instances.append(instance)
	return action_instances



		
