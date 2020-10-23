
from GeneralizedTAMP.language.planner import find_plan
if __name__ == '__main__':
	task = "GridYx"
	if(task == "GridYx"):
		find_plan("./task_planning_problems/tasks/gridYx/gridYx_domain.pddl", "./task_planning_problems/tasks/gridYx/Grid20x.pddl")
