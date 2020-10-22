class Generator:
	"""
		Superclass for all task generators
	"""
	def __init__(self):
		pass

	def generate_header(self, problem_name, domain_name):
		return  "(define (problem %s)\n" % problem_name \
				+ "(:domain %s)" % domain_name \
				

	def generate_footer(self):
		return  ")"

	def generate_objects(self, objects):
		return "(:objects " \
				+ " ".join(objects) \
				+ ")"

	def generate_predicate(self, predicate):
		return "("+" ".join(predicate)+")"

	def generate_init(self, init):
		return "(:init " \
				+ "\n".join([self.generate_predicate(p) for p in init]) \
				+ ")"

	def generate_goal(self, goal):
		return "(:goal (and " \
				+ " ".join([self.generate_predicate(p) for p in goal]) \
				+ "))"

	def generate(self, problem_name, domain_name, objects, init, goal):
		return  self.generate_header(problem_name, domain_name) + "\n" \
				+ self.generate_objects(objects) + "\n" \
				+ self.generate_init(init) + "\n" \
				+ self.generate_goal(goal) + "\n" \
				+ self.generate_footer() \

