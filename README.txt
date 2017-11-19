ABOUT:
cscan is a wrapper script that will turn a directory of executables into a single scan that can be run on software, systems, or infrastructure. Each file in the scanpath directory should be executable, and return a 0 on pass, or any other return code on failure.

USAGE: cscan [-h] [--scanpath DIRECTORY | --test EXECUTABLE]

optional arguments:
  -h, --help            show this help message and exit
  --scanpath DIRECTORY  Select scan path
  --test EXECUTABLE     Run single test

