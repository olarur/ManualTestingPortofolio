# Final project for ITF Manual Testing Course

The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application. 

* Application under test: OrangeHRM - Open Source HR Management

* I created my own documentation in order to find bugs and static testing issues. Original UI Documentation: https://www.orangehrm.com/assets/Files/Complete-Administrative-User-Guide.pdf?url=/Files/Complete-Administrative-User-Guide.pdf

* Created documentation:  [Final Project/Business requirements- Qualifications new feature .docx](https://github.com/olarur/ManualTestingPortofolio/commit/53c5af6acec30139becd7d9b8ad10c6d3148e064#diff29e870575423c74388791e913d14feb6b5b741cc2a2e0b166c4017c711d7ff64) 

* API Documentation: https://orangehrm.github.io/orangehrm-api-doc/


**The final project will be split into 2 sections: [Testing section](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/README.md#1-testing-section) and [SQL section](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/README.md#2-sql-section).**

Tools used: Jira, Postman and MySQL Workbench. 

# Functional specifications

My Info - Qualifications module.
Business requirements can be found [here](https://github.com/olarur/ManualTestingPortofolio/commit/53c5af6acec30139becd7d9b8ad10c6d3148e064#diff29e870575423c74388791e913d14feb6b5b741cc2a2e0b166c4017c711d7ff64)

# 1 Testing section

## 1.1 Test Planning

The Test Plan is designed to describe all details of testing for My Info - Qualifications module from the OrangeHRM application. 

The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan

#### 1.1.1 Roles assigned to the project and persons allocated 
Just me. 


#### 1.1.2 Entry criteria defined
* The environment is up and running 
* Role and permissions are allocated 
* User created 

#### 1.1.3 Exit criteria defined
* All test cases set in scope executed 
* At least 70% of test cases with status passed 
* No critical defect opened
* Maximum 10 high defects opened
* Testing deadline 31.05.2022

#### 1.1.4 Test scope

* __Tests in scope:__ 102
* __Tests not in scope:__ 0

#### 1.1.5 Risks detected

* Project risks: insufficient testers, illness, lack of knowleadge, no developers available to fix the opened bug
* Product risks: environment not functional and available all the time as is an open source, other peoples can change code for a short period of time, other testers can introduce/delete/change entries and my designed test cases may fail.

#### 1.1.6 Evaluating entry criteria

The entry criterias defined in the Test Planning phase have been achieved and the test process continued. 

## 1.2 Test Monitoring and Control

It was done by generating periodic reports that reflect the current status of the tests.

## 1.3 Test Analysis

The above [requirements](https://github.com/olarur/ManualTestingPortofolio/commit/53c5af6acec30139becd7d9b8ad10c6d3148e064#diff29e870575423c74388791e913d14feb6b5b741cc2a2e0b166c4017c711d7ff64) were reviewed for the UI Qualifications module. For the API part, I checked [documentation](https://orangehrm.github.io/orangehrm-api-doc/).
During review, 2 documentation defects were raised. [FPR-14](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/FPR-14.pdf) and [FPR-149](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/FPR-149.pdf)
Defect FPR-14 was fixed and testing process was executed based on the above [requirements.](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/Business%20requirements-%20Qualifications%20new%20feature%20%20-%20fixed%20Issues.docx)  
Test Conditiouns found:
 * Check if new work experience can be added 
 * Check if added work can be edited and deleted 
 * Check if new education can be added 
 * Check if added education can be edited and deleted  
 * Check if new skill can be added 
 * Check if added skill can be edited and deleted 
 * Check if new language can be added 
 * Check if added language can be edited and deleted 
 * Check if new license can be added 
 * Check if added license can be edited and deleted 
 * Check if attachments can be added 
 * Check if added attachments can be edited and deleted 

## 1.4 Test Design

Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases 
are:

**Test cases:**
-> enter here test cases or at least the titles


The test cases with steps can be viewed here: [test_cases.pdf]()

## 1.5 Test Implementation

The following elements are needed to be ready before the test execution phase begins:

* enter here what needs to be ready for the test execution to begin

## 1.6 Test Execution

* Test cases are executed on the created test Cycle summary: [cycle_summary_execution.pdf]()
* Bugs have been created based on the failed tests. The complete bug reports can be found here: [created_bugs.pdf]()
    *  enter here bug titles


## 1.7 Test Completion

* Exit criteria was evaluated and passed
* The traceability matrix was generated and can be found here: [Traceability_matrix.csv]()
* Test execution chart was generated, the final report shows.... -> describe the final report

-> enter here test execution report/chart

# 2 SQL section

