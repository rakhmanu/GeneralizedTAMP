# GeneralizedTAMP
## Generalized Task and Motion Planning

This work primarily addresses the problem of how to integrate geometric properties that arise in task-and-motion planning into generalized planning framework.

The objective is to build a "Generalized Task and Motion Planner" which, given a number of TAMP problem instances, can find common structure in those problem instances and build a probabilistic program to represent a policy for solving similar problems. 

Such a generalized plan will include the following control flow structures
- Branching -- Done
- Looping -- Done
- Nested Looping -- WIP
- More advanced algorithmic absractions such as map, sort, filter, max/min, etc -- WIP
- Automatically generated algorithmic abstractions shared from other domains -- WIP

Geometric information is incorporated into the generalized task planning framework through probabilistic action effects. Certain actions taken in the physical world are geometrically or physically infeasible. The generalized task and motion plan needs to have recourse for geometrically infeasible actions (alternative actions which have lower task utility but are feasible geometrically). 

## Roadmap

Project #1
Version 0.1 -- Implement standard generalized task planning inspired by ARANDA
Version 0.2 -- Modify the standard generalized task planner to work for fully observable nondeterministic generalized planning problem FOND problems.
Version 1.0 -- Build (or use) a TAMP solver which can unroll generalized plans into plan skeletons for given problem instances and can soft fallback on skeleton-less planning under failure. Use TAMP plans to update FOND generalized task plan.
Version 2.0 -- Nested looping/more algorithmic abstractions
Version 3.0 -- Incorporate statistical properties of the geometric state to put weights on actions with higher probability given the geometry

## Tasks
### Task Planning
- TBD

### TAMP Planning
- TBD

## How to run
TODO


Currently the task planning component of this project is heavily inspired by Siddharth Srivastava's thesis work:
http://siddharthsrivastava.net/Publications/thesis.pdf
