#!/usr/bin/python3
import sys
import tester

if len(sys.argv) == 1:
  valgrind = True
else:
  valgrind = False

sys.exit(tester.runIt("test-files", valgrind))
