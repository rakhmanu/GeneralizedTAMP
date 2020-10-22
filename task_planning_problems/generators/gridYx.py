import random
from GeneralizedTAMP.task_planning_problems.generators.generator import Generator

class GridYx(Generator):
	def __init__(self, grid_length):
		self.grid_length = grid_length
		self.problem_name = "Grid"+str(self.grid_length)+"x"
		self.domain_name = "GridYx"
		self.problem_file_path = "./task_planning_problems/tasks/"+str(self.domain_name)+"/"+str(self.problem_name)+".pddl"

	def get_objects(self):
		objects = []
		for gi in range(self.grid_length):
			for gj in range(2):
				objects.append("pos-%s-%s" % (gj, gi))
		return objects

	def get_init(self):
		init = []
		for gi in range(self.grid_length):
			for gj in range(2):
				if(gi > 0):
					init.append(["canmoveleft", "pos-%s-%s" % (gj, gi), "pos-%s-%s" % (gj, gi-1)])
				if(gi < self.grid_length-1):
					init.append(["canmoveright", "pos-%s-%s" % (gj, gi), "pos-%s-%s" % (gj, gi+1)])
				if(gj == 1):
					init.append(["canmoveup", "pos-%s-%s" % (1, gi), "pos-%s-%s" % (0, gi)])
				if(gj == 0):
					init.append(["canmovedown", "pos-%s-%s" % (0, gi), "pos-%s-%s" % (1, gi)])
		init.append(["at", "pos-0-0"])
		init.append(["visited", "pos-0-0"])
		return init


	def get_goal(self):
		goal = []
		for gi in range(self.grid_length):
			for gj in range(2):
				goal.append(["visited", "pos-%s-%s" % (gj, gi)])
		return goal

	def generate(self):
		problem_string = super().generate(self.problem_name, self.domain_name, self.get_objects(), self.get_init(), self.get_goal())
		with open(self.problem_file_path, "w") as problem_file:
			problem_file.write(problem_string)