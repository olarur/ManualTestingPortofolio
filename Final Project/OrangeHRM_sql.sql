create database OrangeHRM;
use OrangeHRM;
CREATE TABLE User (
    ID INT NOT NULL PRIMARY KEY,
    firstName VARCHAR(30) NOT NULL,
    middleName VARCHAR(30),
    lastName VARCHAR(30) NOT NULL,
    code VARCHAR(30) NOT NULL
);

select * from User;
desc User;

insert into User (ID, firstName, middleName, lastName, code) 
values (7, "Olaru", "Laurean", "Razvan", "2310"),
(1, "Mateescu", "Alexandru" , "Vlad", "11275"),
(2, "Olaru", "Emilia", "Monica", "6718"),
(4, "Ionescu", "Denisa", "Ioana", "256"),
(3, "Mateescu", "", "Anca", "9845"), 
(5, "Termentu", "", "Marius", "2556"),
(6, "Termentu", "", "Ana Maria", "1489"),
(8, "Ispas", "Georgeta", "Roxana", "2308");

CREATE TABLE qualification_work (
    seqID INT NOT NULL,
    userID INT NOT NULL,
    company VARCHAR(30) NOT NULL,
    title VARCHAR(30) NOT NULL,
    fromDate DATE,
    toDate DATE,
    comment VARCHAR(100),
    PRIMARY KEY (seqID),
    FOREIGN KEY (userID)
    REFERENCES User (ID)
);

desc qualification_work;

select * from qualification_work;

alter table qualification_work modify column seqID int not null auto_increment;

insert into qualification_work (userID, company, title, fromDate, toDate, comment)
values (7, "IBM", "QA tester", "2021-06-17", "2022-05-03", "still working here"),
(7, "Google", "QA tester", "2018-03-11", "2021-06-16", ""),
(7, "BitDefender", "QA tester", "2015-10-02", "2018-03-10", "");   
insert into qualification_work (userID, company, title, fromDate, toDate, comment)
values (3, "IBM", "QA tester", "2018-10-22", "2022-05-03", "still working here"),
(3, "CyberTech", "QA tester", "2013-01-12", "2018-09-09", "");   
insert into qualification_work (userID, company, title, fromDate, toDate, comment)
values (5, "112HUB", "Software developer", "2009-05-24", "2022-05-03", "still working here"); 
insert into qualification_work (userID, company, title, fromDate, toDate, comment)
values (2, "112HUB", "Software engineer", "2003-10-01", "2022-05-03", "still working here");  
insert into qualification_work (userID, company, title, fromDate, toDate, comment)
values (4, "Ziltec", "Software developer", "2001-11-13", "2022-05-03", "still working here");
insert into qualification_work (userID, company, title, fromDate, toDate, comment)
values (6, "NTT Data", "QA tester", "2020-06-17", "2022-05-03", "still working here"),
(6, "IT Teams", "QA tester", "2018-03-11", "2020-06-12", ""),
(6, "NeoVision", "QA tester", "2011-10-02", "2018-03-01", "");   
insert into qualification_work (userID, company, title, fromDate, toDate, comment)
values (1, "IT Fun", "Software developer", "2006-01-13", "2022-05-03", "still working here");
insert into qualification_work (userID, company, title, fromDate, toDate, comment)
values (8, "NTT Data", "QA tester", "2018-10-22", "2022-05-03", "still working here"),
(8, "PlayTech", "QA tester", "2018-01-12", "2018-05-09", "practice");   

select * from qualification_work;

CREATE TABLE qualification_education (
    seqID INT NOT NULL AUTO_INCREMENT,
    userID INT NOT NULL,
    level INT,
    institute VARCHAR(35),
    startDate DATE,
    endDate DATE,
    specialization VARCHAR(30),
    GPA VARCHAR(10),
    PRIMARY KEY (seqID),
    FOREIGN KEY (userID)
    REFERENCES User (ID)
);
desc qualification_education;
select * from qualification_education;

insert into qualification_education (userID, level, institute, startDate, endDate, specialization, GPA)
values (7, "5", "Lucian Blaga Sibiu", "2017-10-01", "2019-07-05", "Software Testing", "3.3");
insert into qualification_education (userID, level, institute, startDate, endDate, specialization, GPA)
values (7, "4", "Lucian Blaga Sibiu", "2014-10-01", "2017-07-05", "Software Testing", "3.5"),
(1, "4", "Transilvania Brasov", "2011-10-20", "2015-06-05", "Software Developer", "3.1"),
(2, "5", "Politehnica Cluj", "2013-10-15", "2015-06-11", "Software Testing", "2.9"),
(3, "4", "Politehnica Cluj", "2011-10-01", "2015-07-01", "Software Developer", "3.9"),
(4, "4", "Transilvania Brasov", "2016-10-01", "2020-06-02", "Software Testing", "3.3"),
(5, "2", "Avram Iancu Cluj", "2011-09-15", "2015-07-12", "Software Testing", "3.2"),
(6, "5", "Lucian Blaga Sibiu", "2013-10-15", "2015-06-11", "Software Testing", "3.6"),
(6, "4", "Lucian Blaga Sibiu", "2009-10-15", "2013-06-11", "Software Testing", "3.1"),
(8, "5", "Politehnica Cluj", "2016-10-01", "2018-06-04", "Software Testing", "1.8");

CREATE TABLE qualification_skills (
    seqID INT NOT NULL AUTO_INCREMENT,
    userID INT NOT NULL,
    skill VARCHAR(30) NOT NULL,
    years INT NOT NULL,
    comments VARCHAR(100),
    PRIMARY KEY (seqID),
    FOREIGN KEY (userID)
        REFERENCES User (ID)
);

select * from qualification_skills;
insert into qualification_skills (userID, skill, years, comments)
values (1, "Jira", 3, "Advanced"),
(1, "SQL", 1, "Basic"),
(7, "Jira", 4, "Advanced"),
(7, "Postman", 2, "Basic"), 
(2, "Jira", 1, "Basic"),
(2, "SQL", 1, "Basic"),
(3, "Jira", 7, "Advanced"),
(4, "SQL", 8, "Expert"), 
(4, "Postman", 2, "Basic"), 
(5, "Jira", 5, "Expert"),
(6, "SQL", 2, "Basic"),
(8, "Jira", 7, "Advanced"),
(6, "SQL", 8, "Expert"); 

CREATE TABLE qualification_languages (
    seqID INT NOT NULL AUTO_INCREMENT,
    userID INT NOT NULL,
    language VARCHAR(30) NOT NULL,
    fluency VARCHAR(25),
    competency VARCHAR(25),
    comments VARCHAR(100),
    PRIMARY KEY (seqID),
    FOREIGN KEY (userID)
        REFERENCES User (ID)
);

desc qualification_languages;
select * from qualification_languages;

insert into qualification_languages (userID, language, fluency, competency, comments)
values (1, "english", "poor", "speaking", "good understand"),
(2, "english", "basic", "speaking", ""),
(3, "english", "good", "writing", "good reading"),
(4, "spanish", "basic", "speaking", ""),
(5, "arabic", "mother-tongue", "speaking", "expert"),
(6, "english", "poor", "writing",""),
(7, "english", "good", "speaking", "good writing"),
(7, "french", "poor", "speaking", ""),
(7, "spanish", "good", "writing", ""),
(8, "chinese", "poor", "speaking", "good writing");

insert into qualification_languages (userID, language, fluency, competency, comments)
values (4, "english", "poor", "speaking", "good understand"),
(6, "spanish", "mother-tongue", "speaking", "");

CREATE TABLE qualification_languages (
    seqID INT NOT NULL AUTO_INCREMENT,
    userID INT NOT NULL,
    language VARCHAR(30) NOT NULL,
    fluency VARCHAR(25),
    competency VARCHAR(25),
    comments VARCHAR(100),
    PRIMARY KEY (seqID),
    FOREIGN KEY (userID)
        REFERENCES User (ID)
);

CREATE TABLE qualification_license (
    seqID INT NOT NULL AUTO_INCREMENT,
    userID INT NOT NULL,
    type VARCHAR(30),
    number INT,
    issuedDate DATE,
    expiryDate DATE,
    PRIMARY KEY (seqID),
    FOREIGN KEY (userID)
    REFERENCES User (ID)
);

alter table qualification_license modify column type VARCHAR(60);

desc qualification_license;
select * from qualification_license;

insert into qualification_license (userID, type, number, issuedDate, expiryDate) values
(1, "Certified Information Security Manager", 33875621, "2014-01-01", "2024-01-01"),
(7, "Microsoft Certified Systems Engineer", 318235621, "2022-08-01", "2032-08-01"),
(7, "Certified Information Security Manager", 1532343, "2021-04-01", "2031-04-01"),
(2, "Microsoft Certified Systems Engineer", 445342, "2022-10-01", "2032-10-01"),
(3, "Cisco Certified Network Professional", 11217923, "2017-05-01", "2027-05-01"),
(4, "Microsoft Certified Systems Engineer", 318235621, "2019-06-01", "2029-06-01"),
(5, "Certified Information Security Manager", 34223213, "2013-01-01", "2023-01-01"),
(6, "Cisco Certified Network Professional", 32221, "2019-05-01", "2029-05-01"),
(8, "Cisco Certified Network Professional", 9934521, "2018-12-01", "2028-12-01"),
(5, "Microsoft Certified Systems Engineer", 982465, "2016-10-01", "2026-10-01"),
(7, "Cisco Certified Network Professional", 767652, "2014-09-01", "2024-09-01"),
(6, "Microsoft Certified Systems Engineer", 732785, "2018-06-01", "2028-06-01");

CREATE TABLE qualification_attachments (
    seqID INT NOT NULL AUTO_INCREMENT,
    userID INT NOT NULL,
    fileName VARCHAR(30),
    description VARCHAR(50),
    size INT,
    type VARCHAR(30),
    added_date DATE,
    added_by VARCHAR(30),
    PRIMARY KEY (seqID),
    FOREIGN KEY (userID)
    REFERENCES User (ID)
);

desc qualification_attachments;
select * from qualification_attachments;

insert into qualification_attachments (userID, filename, description, size, type, added_date, added_by) values
(7, "certificate_qa", "olaru razvan qa certificate", 799.89,"pdf", "2018-09-18", "Human Resources"),
(6, "certificate", "", 623.01,"docx", "2016-04-28", "Human Resources"),
(1, "certificate", "", 222.01,"pdf", "2018-01-31", "Human Resources"),
(4, "certificate", "", 987.21,"doc", "2022-03-12", "Human Resources");

select * from qualification_languages;
update qualification_languages 
set fluency = "good" 
where userID = 7 and language = "french";

-- All jobs for a specific user. Using Alias, join, condition and sort.
 select user.firstName as First_Name, user.lastName as Last_Name, qw.company as Company, qw.title as Job 
 from user
 inner join qualification_work qw on user.ID = qw.userID
 where user.id=7
 order by qw.company ASC ;
 
 -- Known languages and skills with at least 2 years experience for a specific user. Using Alias, Join, condition and sort. 
 select user.firstName as First_Name, user.lastName as Last_Name, ql.language as Language, qs.skill as Skills   
 from ((user
 inner join qualification_languages ql on user.ID = ql.userID)
 inner join qualification_skills qs on user.ID = qs.userID)
 where user.id=7 and ql.fluency in ("good", "mother-tongue") and qs.years>2
 order by ql.language ASC;
 
-- Latest education for a specific user. Using order by and limit  
select institute as Institute, specialization as Specialization, endDate as Graduation_Year from qualification_education
where userID=3
order By level desc limit 1;
  
 -- Check user id and full name. Using functions and like
 select ID as User_ID, CONCAT(firstName, ' ', middleName, ' ',lastName) as Full_Name  from user
 where firstName like "O%" and lastName not like "Monica";
 
 
 