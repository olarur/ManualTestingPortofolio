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
* At least 60% of test cases with status passed 
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

![Project start backlog ](https://user-images.githubusercontent.com/103954630/170469885-6c2bcf84-8bca-45bc-b079-ab6ba89ca513.jpg)

![sprint in progress](https://user-images.githubusercontent.com/103954630/170469942-cec4231f-d964-4122-8c0d-4cee61f0a3f0.jpg)

![Cycle Summary in progress](https://user-images.githubusercontent.com/103954630/170470035-c2fc5f25-4d16-42c2-b0d7-57d2384dafb3.jpg)

![work experience - API testing results](https://user-images.githubusercontent.com/103954630/170470107-2e745e88-d194-404b-a336-68a721b35ea2.jpg)


## 1.3 Test Analysis

The above [requirements](https://github.com/olarur/ManualTestingPortofolio/commit/53c5af6acec30139becd7d9b8ad10c6d3148e064#diff29e870575423c74388791e913d14feb6b5b741cc2a2e0b166c4017c711d7ff64) were reviewed for the UI Qualifications module. For the API part, I checked [documentation](https://orangehrm.github.io/orangehrm-api-doc/).
During review, 2 documentation defects were raised. [FPR-14](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/FPR-14.pdf) and [FPR-149](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/FPR-149.pdf)
Defect FPR-14 was fixed and testing process was executed based on the above [requirements.](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/Business%20requirements-%20Qualifications%20new%20feature%20%20-%20fixed%20Issues.docx)  
Test Conditions found:
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
* Black box testing : boundary values, use case testing. 
* Experience based testing: exploratory testing and check list based testing. 

Non-Functional testing is not in scope. 

**Test cases:**

* UI test cases list: 

![UI test cases](https://user-images.githubusercontent.com/103954630/170472410-d8241b4b-31b5-456d-8753-feba4665448c.jpg)

* API test cases list: 

![image](https://user-images.githubusercontent.com/103954630/170471982-4defbeb8-e189-4213-9ab8-2d6a0f639079.png)


The test cases with steps can be viewed here: [test_cases.xls](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/All%20test%20cases.xlsx)

## 1.5 Test Implementation

The following elements are needed to be ready before the test execution phase begins:

* The environment is up and running  and user is created. 

## 1.6 Test Execution

Test cases are executed on the created test Cycles summaries: 

* work experience section was tested in cycle [Ad Hoc.html](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/Ad%20Hoc%20Testing%20Cycle%20summary.html)

![image](https://user-images.githubusercontent.com/103954630/170467782-7cffc782-2e40-4f62-b165-6cb742e5d8ed.png)

* Education, Skills, Languages, License and Attachments were tested in cycle [UI section](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/UI%20section%20Testing%20Cycle%20summary.html)

![image](https://user-images.githubusercontent.com/103954630/170468569-776b0b9d-abb2-46bb-94af-3cc6be9b64f5.png)

* API tests were executed in 2 cycles [API education testing](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/API%20Education%20Testing%20Cycle%20summary.html) and [API work experience testing](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/API%20Work%20Experience%20Testing%20Cycle%20summary.html)

API tests were written in Postman and contains GET, POST, PUT and DELETE HTTP methods. You can check [collection](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/Final%20project.postman_collection.json) and [environment](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/final%20project%20ENV.postman_environment.json)
With GET token call i stored the bearer token into a variable as current value to be sure will not be shared or stored in cloud. if you want to run the collection you need first to registrate you OAuth Client in Orange HRM. (*you may find more information about this in Orange HRM documentations)* 

All calls contain few tests too. The tests are checking: returned status (as 200 or 400/404 for negative tests) and the response body. For more details please import colletion.  

* Bugs have been created based on the failed tests. The complete bug reports can be found here: [Bugs_pdf.pdf](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/Bugs_pdf.pdf)

Bugs list: 

    *  [API Documentation] Edit API documentation missing for Education section
    *  Returned message is different than expected one
    *  "Expiry Date" field should not be earlier than "Issued Date" field 
    *  "End date" field should not be earlier than "Start Date" field
    *  "To" field should not be earlier than "From" field 
    *  "Browse" button is called "Choose file"
    *  "Select File" allows only one file under 1Mb
    *  "Issue Date" allows future date
    *  User is allowed to type date in "Expiry Date" field.
    *  User is allowed to type date in "Issued Date" field
    *  "License Number" field is not mandatory
    *  A value is missing from "License Type" drop-down list
    *  "Competency" drop-down contains other values 
    *  "Fluency" drop-down contains other values
    *  "Comments" field allows only 100 characters
    *  Field "Years of Experience" not allows all type of characters
    *  "Skill" drop-down list doesn't match with documented values
    *  "End Date" allows future date
    *  "Start Date" allows future date
    *  User is allowed to type date in "End Date" field
    *  User is allowed to type date in "Start Date" field
    *  "GPA/Score" field allows only 25 characters
    *  "Add Education" form contains one more field 
    *  "Level" drop-down contains more values 
    *  400 HTTP response instead of 404 
    *  No error returned when mandatory field is wrong
    *  20x HTTP response returned instead of 404 
    *  GET response is different than expected
    *  "To" field allows future date
    *  "From" field allows future date
    *  "Comment" field allow max 199 characters
    *  "To" field format is yyyy-mm-dd
    *  User is allowed to type date in "To" field.
    *  "From" field format is yyyy-mm-dd
    *  User is allowed to type date into "From" field.
    *  [Documentation issue] - Qualification section
    

## 1.7 Test Completion

* Exit criteria was evaluated and passed
* The traceability matrix was generated and can be found here: [Traceability_matrix.xlsx](https://github.com/olarur/ManualTestingPortofolio/blob/main/Final%20Project/Traceability_Matrix.xlsx)

![tracebility_matrix_Work_experience_story](https://user-images.githubusercontent.com/103954630/170475630-0c10d5db-fbfe-4e40-b7a6-9e1ca8cbd90b.jpg)

![tracebility_matrix_Education_story_2](https://user-images.githubusercontent.com/103954630/170475652-6d330c63-77ce-4be0-b6f0-a5de7db56c71.jpg)

![tracebility_matrix_License_story](https://user-images.githubusercontent.com/103954630/170475674-c9d6fa16-7c1c-40a2-a49f-5d5349d6cbe8.jpg)

* Test execution chart was generated, the final report shows.... -> describe the final report




-> enter here test execution report/chart

# 2 SQL section

