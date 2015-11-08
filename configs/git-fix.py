#!/usr/bin/python

import subprocess

# git5 fix
print subprocess.check_output("git5 fix", shell=True)

files = subprocess.check_output("git5 diff --name_only", shell=True).split("\n")
files = filter(None, files)

file_name_token = "${file_name}"
list_of_commands_to_execute = [
    "replace_pattern.py -opt='#include \".*\.pb\.h\"|.pb.h|.proto.h' -f=\"${file_name}\"",
    "sort-lines-by-pattern.py -f=\"${file_name}\" -re=\"#include\ .*\" -re=\"using\ .*\"",
]

print "\nList of commands:"
for cmd in list_of_commands_to_execute:
  print cmd
print ""

for file_name in files:
  for cmd in list_of_commands_to_execute:
    cmd_for_file = cmd.replace(file_name_token, file_name)
    output = subprocess.check_output(cmd_for_file, shell=True)
    if output:
      print output
  print file_name + " is processed"
