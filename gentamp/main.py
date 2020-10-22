import random

# Graph structures
class AbstractStructure:
	def __init__(self, domain, problem):
		self.roles = []
		self.role_counts = []

	def get_role_counts(self):
		return 0

class GeneralizedPlanGraph:
	def __init__(self):
		self.start_node = AbstractStructure()
		self.open = [self.start_node]
		self.edges = {}
		self.nodes = [self.start_node]


	def get_fo_spec(self, structure, role_counts):
		"""
			Input:
				structure -- An abstract structure
				role_counts -- Numbers associated with each role in the abstract structure
			Effects:
				Returns a first order specification of the problem
		"""

		# Must satisfy three axioms

		# Axu 
		pass

	def model_generator(self, fospec):
		"""
			Input: fospec -- A first order specification of the problem
			Effects: a Problem object
		"""
		pass


	def build_genplan(self):
		# pick an open node
		current_open = random.choose(self.open)
		role_counts = current_open.get_role_counts()
		fospec = self.get_fo_spec(current_open, role_counts)
		problem = self.model_generator(fospec)


# Algorithm
