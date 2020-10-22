import sys
import os
from collections import namedtuple

# Fast downward translation requires command line arguments

def find_build(fd_path):
    for release in ['release']:  # TODO: list the directory
        path = os.path.join(fd_path, 'builds/{}/'.format(release))
        if os.path.exists(path):
            return path
    # TODO: could also just automatically compile
    raise RuntimeError('Please compile FastDownward first')


FD_PATH = os.path.join(os.path.dirname(os.path.abspath(__file__)), '../downward/')
TRANSLATE_PATH = os.path.join(find_build(FD_PATH), 'bin/translate')
DOMAIN_INPUT = 'domain.pddl'
PROBLEM_INPUT = 'problem.pddl'
TRANSLATE_FLAGS = ['--negative-axioms']
original_argv = sys.argv[:]
sys.argv = sys.argv[:1] + TRANSLATE_FLAGS + [DOMAIN_INPUT, PROBLEM_INPUT]
sys.path.append(TRANSLATE_PATH)

from downward.src.translate.pddl_parser.parsing_functions import parse_domain_pddl, parse_task_pddl, \
    parse_condition, check_for_duplicates
import pddl_parser.lisp_parser
import pddl_parser

sys.argv = original_argv

Domain = namedtuple('Domain', ['name', 'requirements', 'types', 'type_dict', 'constants',
                               'predicates', 'predicate_dict', 'functions', 'actions', 'axioms'])

Problem = namedtuple('Problem', ['task_name', 'task_domain_name', 'task_requirements',
                                 'objects', 'init', 'goal', 'use_metric'])

def read(filename):
    with open(filename, 'r') as f:
        return f.read()

def parse_lisp(lisp):
    return pddl_parser.lisp_parser.parse_nested_list(lisp.splitlines())

def parse_problem(domain, problem_pddl):
    return Problem(*parse_task_pddl(parse_lisp(problem_pddl), domain.type_dict, domain.predicate_dict))

def parse_sequential_domain(domain_pddl):
    domain = Domain(*parse_domain_pddl(parse_lisp(domain_pddl)))
    return domain

if __name__ == '__main__':
	print("Testing pddl parsing ...")
	test_problem_file = "./task_planning_problems/tasks/gridYx/Grid10x.pddl"
	test_domain_file = "./task_planning_problems/tasks/gridYx/GridYx_domain.pddl"
	domain = parse_sequential_domain(read(test_domain_file))
	problem = parse_problem(domain, read(test_problem_file))
	print(domain, problem)