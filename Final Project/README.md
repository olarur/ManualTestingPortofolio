# Final project for ITF Manual Testing Course

The scope of the final project for ITF Manual Testing Course is to use all gained knowledge through the course and apply them in practice, using a live application. 

* Application under test: OrangeHRM - Open Source HR Management

* I created my own documentation in order to find bugs and static testing issues. Original UI Documentation: https://www.orangehrm.com/assets/Files/Complete-Administrative-User-Guide.pdf?url=/Files/Complete-Administrative-User-Guide.pdf

* Created documentation:  [Final Project/Business requirements- Qualifications new feature .docx](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/Business%20requirements-%20Qualifications%20new%20feature%20%20-%20fixed%20Issues.docx) 

* API Documentation: https://orangehrm.github.io/orangehrm-api-doc/


**The final project will be split into 2 sections: [Testing section](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/README.md#1-testing-section) and [SQL section](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/README.md#2-sql-section).**

Tools used: Jira, Zephyr Squad, Postman and MySQL Workbench. 

# Functional specifications

My Info - Qualifications module.
Business requirements can be found [here](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/Business%20requirements-%20Qualifications%20new%20feature%20.docx). 

![image](https://user-images.githubusercontent.com/103954630/171001350-981bd29a-d3bb-41b0-81d8-9a37a591a87b.png)


# 1 Testing section

## 1.1 Test Planning

The Test Plan is designed to describe all details of testing for My Info - Qualifications module from the OrangeHRM application. 

The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing and the risks associated with the plan.


#### 1.1.1 Entry criteria defined
* The environment is up and running 
* Role and permissions are allocated 
* User created 

#### 1.1.2 Exit criteria defined
* All test cases set in scope executed 
* At least 60% of test cases with status passed 
* No critical defect opened
* Maximum 10 high priority defects opened
* Testing deadline 31.05.2022

#### 1.1.3 Test scope

* __Tests in scope:__ 
Review and Functional Testing using Black-box testing and Experience-based testing as Test Design Tehniques. GUI testing and API testing. 

* __Tests not in scope:__ 
Performance Testing, Stress testing, Volume Testing, compatibility testing with multiple browsers, Mobile testing  and Functional Testing using White-box Testing Tehniques. 

#### 1.1.4 Risks detected

* Project risks: insufficient testers, illness, lack of knowleadge, no developers available to fix the opened bugs, environment not functional and available all the time as is an open source, other peoples can change code for a short period of time, other testers can introduce/delete/change entries and my designed test cases may fail.
* Product risks: validation constraints on the fields might be too restrictive to the end-user

#### 1.1.5 Evaluating entry criteria

The entry criterias defined in the Test Planning phase have been achieved and the test process continued. 

## 1.2 Test Monitoring and Control

It was done by generating periodic reports that reflect the current status of the tests.

![sprint in progress](https://user-images.githubusercontent.com/103954630/170469942-cec4231f-d964-4122-8c0d-4cee61f0a3f0.jpg)

![Cycle Summary in progress](https://user-images.githubusercontent.com/103954630/170470035-c2fc5f25-4d16-42c2-b0d7-57d2384dafb3.jpg)

![work experience - API testing results](https://user-images.githubusercontent.com/103954630/170470107-2e745e88-d194-404b-a336-68a721b35ea2.jpg)


## 1.3 Test Analysis

The above [requirements](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/Business%20requirements-%20Qualifications%20new%20feature%20.docx) were reviewed for the UI Qualifications module. For the API part, I checked [documentation](https://orangehrm.github.io/orangehrm-api-doc/).
During review, 2 documentation defects were raised. [FPR-14](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/FPR-14.pdf) and [FPR-149](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/FPR-149.pdf)
Defect FPR-14 was fixed and testing process was executed based on the above [requirements.](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/Business%20requirements-%20Qualifications%20new%20feature%20%20-%20fixed%20Issues.docx)  
 A subset of Test Conditions defined:
 * Check if new work experience can be added 
 * Check if added work can be edited and deleted 
 * Check if multiple entries can be added/ deleted 
 * Check mandatory and optional fields 
 * Check max allowed characters for text fields 
 * For date fields verify end date cannot be earlier than start date 
 * Check Date format
 * Check if future dates are allowed
 * Check if new education can be added 
 * Check if added education can be edited and deleted  
 * Check if new skill can be added 
 * Check if added skill can be edited and deleted 
 * Check if new language can be added 
 * Check if added language can be edited and deleted 
 * Verify values for drop down fields 
 * Check if new license can be added 
 * Check if added license can be edited and deleted 
 * Check if attachments can be added 
 * Check if added attachments can be edited and deleted 
 * Verify if all type of attachments are allowed
 * Check if attachments can be downloaded 
 * Verify the attachment does not exceed 1MB
 * Check add/edit/delete actions via UI and via API. 


## 1.4 Test Design

Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases 
are:
* Black box testing : boundary values, use case testing. 
* Experience based testing: exploratory testing and check list based testing. 

**Test cases:**

* UI test cases list: 

![UI test cases](https://user-images.githubusercontent.com/103954630/170472410-d8241b4b-31b5-456d-8753-feba4665448c.jpg)

* API test cases list: 

![image](https://user-images.githubusercontent.com/103954630/170471982-4defbeb8-e189-4213-9ab8-2d6a0f639079.png)


The test cases with steps can be viewed here: [test_cases.xls](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/All%20test%20cases.xlsx)

## 1.5 Test Implementation

The following elements are needed to be ready before the test execution phase begins:

* Testing environment is up and running: https://opensource-demo.orangehrmlive.com/
* Access to the testing environment is given: Username : Admin | Password : admin123
* Cycle summary was created
* Test cases were added to the cycle summary
* Postman collection with the dependents API methods was created
* Authorization token was created for accessing the API. 

## 1.6 Test Execution

Test cases are executed on the created test Cycle. Check summaries bellow:  

* work experience section was tested in cycle [Ad-hoc.csv](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/Ad-hoc%20%20cycle%20execution.csv)

![image](https://user-images.githubusercontent.com/103954630/170467782-7cffc782-2e40-4f62-b165-6cb742e5d8ed.png)

* Education, Skills, Languages, License and Attachments were tested in cycle [UI section.csv](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/UI%20sections%20cycle%20execution.csv)

![image](https://user-images.githubusercontent.com/103954630/170468569-776b0b9d-abb2-46bb-94af-3cc6be9b64f5.png)

* API tests were executed in 2 cycles [API education testing.csv](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/API%20education%20cycle%20execution.csv) and [API work experience testing.csv](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/API%20work%20experience%20%20cycle%20execution.csv)

API tests were written in Postman and contains GET, POST, PUT and DELETE HTTP methods. You can check [collection](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/Final%20project.postman_collection.json) and [environment](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/final%20project%20ENV.postman_environment.json)
With GET token call i stored the bearer token into a variable as current value to be sure will not be shared or stored in cloud. if you want to run the collection you need first to registrate you OAuth Client in Orange HRM. (*you may find more information about this in Orange HRM documentations)* 

All calls contain few tests too. The tests are checking: returned status (as 200 or 400/404 for negative tests) and the response body. For more details please import collection.  

![monitor_API_calls_via_Postman](https://user-images.githubusercontent.com/103954630/170478769-416b0b99-9fed-4afe-ba60-5da7779f729d.jpg)


* Bugs have been created based on the failed tests. The complete bug reports can be found here: [Bugs_pdf.pdf](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/Bugs_pdf.pdf)

Bugs list: 

![image](https://user-images.githubusercontent.com/103954630/170998736-76acf7ec-22f8-485e-92a0-812d283f9537.png)


Bug report example : 

![image](https://user-images.githubusercontent.com/103954630/170499873-cf04787d-9728-437a-8dc5-d41aaff84afd.png)


Full regression testing is needed after the bugs are fixed.

## 1.7 Test Completion

* Exit criteria was evaluated and passed
* The traceability matrix was generated and can be found here: [Traceability_matrix.xlsx](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/Traceability_Matrix.xlsx)

![image](https://user-images.githubusercontent.com/103954630/170478653-b6819cf9-9dda-47b1-9ca6-954e5da4e1a9.png)


Tracebility matrix examples per story: 

![tracebility_matrix_Work_experience_story](https://user-images.githubusercontent.com/103954630/170475630-0c10d5db-fbfe-4e40-b7a6-9e1ca8cbd90b.jpg)

![tracebility_matrix_Education_story_1](https://user-images.githubusercontent.com/103954630/170478552-36c99423-dd2d-442e-9bdb-2961e605a822.jpg)

![tracebility_matrix_License_story](https://user-images.githubusercontent.com/103954630/170475674-c9d6fa16-7c1c-40a2-a49f-5d5349d6cbe8.jpg)

* Test execution chart was generated: 

![image](https://user-images.githubusercontent.com/103954630/170479904-d93cbd5b-4446-4662-98b6-7d993b267476.png)

![image](https://user-images.githubusercontent.com/103954630/170479819-76a17f92-908b-4e49-9ceb-03222e39e852.png)

![image](https://user-images.githubusercontent.com/103954630/170481295-a375c462-fbf9-4906-8875-1c49b071de1d.png)

![image](https://user-images.githubusercontent.com/103954630/170480353-774331dd-7381-43a3-9d40-e0f70bc69eda.png)

* Test execution report : 
   * 2 Sprints (3 weeks/sprint) 
   * Number of test cases planned for first sprint 17 
   * Number of test cases runned in the first sprint 17
   * Number of test cases planned for 2nd sprint 85
   * Number of test cases executed in 2nd sprint 85 
   * Number of defects raised in the 1st sprint 12
   * Number of defects reaised in the 2nd sprint 24
   * No critical issue opened
   * High priority issues opened 11
   * Several times the environment was not functional. 


# 2 SQL section

As i couldn't access real OrangeHRM database i created my own DB  for the choosed module. 

![OrangeHRM db diagram](https://user-images.githubusercontent.com/103954630/170485977-cb8ce720-242b-4317-92b8-d0f5ce1adaf8.jpg)

[Check here](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/OrangeHRM_sql.sql) queries done for this project. 

