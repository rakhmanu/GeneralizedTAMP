import subprocess
import os
import re
from collections import namedtuple
import copy

DEFAULT_MAX_TIME = 30 # INF
DEFAULT_PLANNER = 'ff-astar'
FD_PATH = "./downward"

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
	state = set(copy.deepcopy(state))
	assert(isinstance(action, pddl.PropositionalAction))
	# TODO: signed literals
	for conditions, effect in action.del_effects:
		if conditions_hold(state, conditions):
			state.discard(effect)
	for conditions, effect in action.add_effects:
		if conditions_hold(state, conditions):
			state.add(effect)
	return state



		
