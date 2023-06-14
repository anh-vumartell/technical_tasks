# TECHNICAL TASKS
### DESCRIPTIONS
This repo is my attempt at automating a medical web application
The system under test is found from here [Demo Page](https://demo.patient.noonatest.com/patient/#/sign-in)

There are two (2) tasks to be accomplished:
1. Write an automated test case that check the demo page is displayed correctly.
2. Write an automated test case that check the scenario where log in fails with incorrect credentials. 

Specifications:
- use Robot Framework for this task
- codes are pushed to version control system (Git)
### PROJECT SETUPS

- Python 3.10.4
- Robot Framework 6.1
- Robot Framework Browser Library
- OS: Windows 10 
- Browsers: Chrome, Firefox

### HOW TO RUN TESTS
1. Copy the source and run `git clone` to copy this project to your machine
2. Set up the project with the above prerequisites
3. From the command line
   - Invoke `robot -d logs -V variables/landing_page_en.py -V variables/login_page_en.py tests/` to run all test suites
   - Invoke `robot -d logs -V variables/landing_page_en.py tests/landing_page.robot` 
   - Invoke `robot -d logs -V variables/login_page_en.py tests/login_page.robot`

