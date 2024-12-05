# About this project
This is a project to collect the code written to solve the problems from the adventofcode 2024 (https://adventofcode.com/2024)

# How to run the code using docker
From the root directory, run:
```sh
docker run  -ti \
            --rm \
            --workdir /usr/src/app \
            --volume "$(pwd)":/usr/src/app \
            ruby:3.3.6 \
             /bin/bash
```

Then, inside the terminal in the container, access the directory from the prolem you want to run the solution and run the script.
```sh
# Example: run the script for problem 1 of day 1
cd 01.1
ruby run.rb
```
