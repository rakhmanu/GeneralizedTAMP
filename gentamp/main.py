import random
from GeneralizedTAMP.language.pddl_structures import Domain, Problem
from GeneralizedTAMP.language.parse_pddl import parse_sequential_domain, parse_problem
from GeneralizedTAMP.language.planner import find_plan, apply_action
from GeneralizedTAMP.utils import *
from collections import defaultdict
import sys

# Graph structures


class AbstractStructure:
	def __init__(self, problem):
		self.edges = defaultdict(lambda:defaultdict(lambda:defaultdict(lambda: float("inf"))))
		self.nodes, self.role_lookup = self.create_roles_from_problem(problem)
		self.add_binary_relations(problem)

	def create_roles_from_problem(self, problem):
		roles = defaultdict(lambda: [])
		object_predicates = defaultdict(lambda: [])
		object_names = [obj.name for obj in problem.objects]
		for literal in problem.init:
			# Currently abstraction predicates are only unary predicates
			if(len(literal.args) == 1):
				object_predicates[literal.args[0]].append(literal.predicate)

		# Create the roles
		for objname in object_names:
			roles[tuple(object_predicates[objname])].append(objname)

		return roles, object_predicates

	def same_element(self, arr):
		return len(list(set(arr))) == 1


	def choice_focus_coerce(self, action):
		"""
			Input: Action with preconditions
			Effects: Returns a set of new abstract structures focused on the predicates in the precondition of the action
		"""
		# Get the predicates in the precondition of the action

	def add_binary_relations(self, problem):
		binary_predicates = defaultdict(lambda:defaultdict(lambda:[]))
		for literal in problem.init:
			if(len(literal.args) == 2):
				# Get the node of the first and second elements
				binary_predicates[literal.args[0]][literal.predicate].append((literal.args[1], 0.5))

		# # If every element of a role has a predicate going the same place, then convert from 0.5 to 1
		for role, elements in self.nodes.items():
			pred_role_map = defaultdict(lambda: [])
			pred_element_map = defaultdict(lambda: [])
			for element in elements:
				for pred, element2 in binary_predicates[element].items():
					pred_role_map[pred].append(element2[0])
					pred_element_map[pred].append(element[0])

			for pred in pred_role_map.keys():
				# They all go to the same place and every element in the role has this predicate
				dest_role_elements = self.role_lookup[pred_role_map[pred][0]]
				if(self.same_element([tuple(self.role_lookup[r[0]]) for r in pred_role_map[pred]]) \
					and len(pred_element_map[pred]) == len(elements)):
					r2 = self.role_lookup[pred_role_map[pred][0]]
					self.edges[tuple(role)][tuple(r2)][pred] = min(1, self.edges[tuple(role)][tuple(r2)][pred])
				else:
					for r2 in list(set([tuple(self.role_lookup[r[0]]) for r in pred_role_map[pred]])):
						print(r2)
						self.edges[tuple(role)][tuple(r2)][pred] = 0.5



	def get_role_counts(self):
		return {k:len(v) for (k, v) in self.roles.items()}

class GeneralizedPlanGraph:
	def __init__(self, domain_file, problem_file):
		self.problem_file = problem_file
		self.domain_file = domain_file
		self.domain = parse_sequential_domain(read(self.domain_file))
		self.problem = parse_problem(self.domain, read(self.problem_file))

	def generalize_choice_actions(self, plan):
		"""
			Get the role of each of the objects in the argument of the action
		"""

		# Get the arguments of the action from the domain
		print(plan)
		print(self.domain)
		raise NotImplementedError

	def apply_actions_abstract(self, state, action):
		raise NotImplementedError

	def subsumed(self, concrete_state, abstract_state):
		raise NotImplementedError

	def trace(self, plan):
		print(plan)
		concrete_states = [ self.problem ]

		# Create the abstract structure
		abstract_states = [ AbstractStructure(self.problem) ]

		# Generalize the choice actions
		choice_actions = self.generalize_choice_actions(plan)

		for i, a_i in enumerate(choice_actions):
			# Apply the action to the concrete state
			concrete_states.append(apply_action(concrete_states[-1], a_i))
			abs_struct_set = self.apply_action_abstract(a_i)
			for S in abs_struct_set:
				if (self.subsumed(concrete_states[-1], S)):
					abstract_states.append(S)
					break

		return zip(abstract_states, choice_actions)


	def safe_loop(self):
		"""
			Determine if the change made a net non-zero change
		"""
		raise NotImplementedError

	def form_loops(self, sa_sequence, loop_set = []):
		last = [-1 for sa in sa_sequence]
		loop_found = False
		for sai, sa in enumerate(sa_sequence):
			if(last[sa] > -1 and self.safe_loop(last[sa], sai)):
				loop_start = last[sa]
				loop_end = sai
				loop_found = True
				break
			else:
				last[sa] = sai
		if(loop_found):
			# Extend the loop by capturing subsequent iterations
			i = loop_end
			loop_length = loop_end - loop_start
			while(sa_sequence[i] == sa_sequence[loop_start + ( (i-loop_end) % loop_length )]):
				i+=1
			loop_exit = i-1
			loop_set.append((loop_start, loop_end, loop_exit))
			new_sa_sequence = [sa_sequence[sai] for sai in range(loop_exit, len(sa_sequence))]
			return form_loops(new_sa_sequence, loop_set)
		return loop_set

	def build_genplan(self):
		# First generate a plan for this domain and problem
		print("Finding Plan ... ")
		plan = find_plan(self.domain_file, self.problem_file)	
		sa_sequence = self.trace(plan)
		sys.exit(1)
		loopset = self.form_loops(sa_sequence)
		genplan = self.create_graph(sa_sequence, loopset)
		return genplan




# Algorithm
if __name__ == '__main__':
	print("Testing pddl parsing ...")
	domain_file = "./task_planning_problems/tasks/gridYx/GridYx_domain.pddl"
	problem_file = "./task_planning_problems/tasks/gridYx/Grid10x.pddl"
	graph = GeneralizedPlanGraph(domain_file, problem_file) 
	graph.build_genplan()

	