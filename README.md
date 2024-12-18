# Lab 1
In this lab we go through the basics of makefiles.

## Basic Makefile Rules
1. Which part is the rule, the target, and the recipe? hello.txt is the target, the rule is the whole thing, and the recipe is echo "hello world!" > hellow.txt
1. Predict what will happen if you run the same command again. I predict it will say the file is up to date. If we changed the contents it makes it would update the hello.txt file.

## Dependencies
1. What output do you predict if you run it a second time? I predict it will say it's up to date again.
1. What do you predict will hapenn if you run make agian with modified main.c file? I predict it will need to remake it, because main.c has changed.

## Cleaning up
1. What do you predict will happen if you run it again? Nothing because there are no files to remove.