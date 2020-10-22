from GeneralizedTAMP.task_planning_problems.generators.gridYx import GridYx

if __name__ == '__main__':
	task = "GridYx"
	if(task == "GridYx"):
		for i in range(2, 100):
			grid_generator = GridYx(i)
			grid_generator.generate() 