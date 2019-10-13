---
papersize: a4
documentclass: scrartcl
classoption: DIV=14
colorlinks: true
---

<!-- ![LSE](images/lse-logo.jpg) -->
# MY472 Data for Data Scientists

### Michaelmas Term 2019

### Instructors

Office hour slots to be booked via LSE's StudentHub.

* [Kenneth Benoit](mailto:K.R.Benoit@lse.ac.uk), Department of Methodology.  *Office hours*: Tuesdays 15:30-17:00, Wednesdays 10:00-11:00, COL.8.11.

* [Milena Tsvetkova](mailto:m.tsvetkova@lse.ac.uk), Department of Methodology.  *Office hours*: Fridays 10:00–12:00, COL 8.03 (only weeks 10, 11).

### Course Information

* Lectures on Tuesdays 09:00–11:00 in CBG.2.01
* Classes on:
    - Thursdays 9:30-11:00, FAW.4.02
    - Fridays 15:00-16:30, FAW.4.02

No lectures or classes will take place during (Reading) Week 6.

### Quick links to topics

| Week | Date | Instructor | Topic |  
|:--:|-------:|:--  -------|:------|  
| 1  |  1 Oct | KB         | [Introduction to data](#1-introduction-to-data) |  
| 2  |  8 Oct | KB         | [The Shape of Data](#2-the-shape-of-data) |  
| 3  | 15 Oct | KB         | [Cloud Computing](#3-cloud-computing) |  
| 4  | 22 Oct | KB         | [HTML and CSS](#4-html-and-css) |  
| 5  | 29 Oct | KB         | [Using data from the Internet](#5-using-data-from-the-internet) |  
| 6  |  6 Nov | -          | _reading week_ |  
| 7  | 12 Nov | KB         | [Working with APIs](#7-working-with-apis) |  
| 8  | 19 Nov | KB         | [Textual data](#8-textual-data) |  
| 9  | 26 Nov | KB         | [Data visualisation](#9-data-visualisation) |  
| 10 |  3 Dec | MT         | [Creating and managing databases](#10-creating-and-managing-databases) |  
| 11 | 10 Dec | MT         | [Interacting with online databases](#11-interacting-with-online-databases)|  


### Course Description

This course will cover the principles of digital methods for storing and structuring data,
including data types, relational and non-relational database design, and query languages.
Students will learn to build, populate, manipulate and query databases based on datasets
relevant to their fields of interest. The course will also cover workflow management
for typical data transformation and cleaning projects, frequently the starting point
and most time-consuming part of any data science project.  This course uses a
project-based learning approach towards the study of performance computation and
group-based collaboration, essential ingredients of modern data science projects.
The coverage of data sharing will include key skills in on-line publishing, including
the elements of web design, the technical elements of web technologies and web programming,
as well as the use of revision-control and group collaboration tools such as GitHub.

### Objectives

In this course, we introduce principles and applications of the electronic
storage, structuring, manipulation, transformation, extraction, and
dissemination of data. This includes data types, database design,
data base implementation, and data analysis through structured queries.
Through joining operations, we will also cover the challenges of data
linkage and how to combine datasets from different sources. We begin
by discussing concepts in fundamental data types, and how data is stored
and recorded electronically.

Cloud computing and online collaboration tools forms the second part of this
course, along with the tools and technologies that underlie them. Students will
firstly learn the basics of cloud computing that can serve various purposes such
as secure hosting of webpages and web services and on-demand computations for
data analysis and then learn how to set up a cloud-computing environment through
Amazon Web Services, a popular cloud platform.  Collaboration and the
dissemination and submission of course assignments will use GitHub, the popular
code repository and version control system. The course also provides in­depth
look at various common data-types on the Internet such as various mark­up languages
(e.g. HTML and XML) and JSON.  Students also study the fundamentals of
acquisition and management of the data from the Internet through both scraping of
websites and accessing APIs of online databases and social network services.

In the third part of the course, we will learn the data management and basic
methodology of data analysis. We will cover database design, especially
relational databases, using substantive examples across a variety of fields.
Students are introduced to SQL through MySQL, and programming assignments in
this unit of the course will be designed to insure that students learn to
create, populate and query an SQL database. We will introduce NoSQL using
MongoDB and the JSON data format for comparison. For both types of database,
students will be encouraged to work with data relevant to their own interests as
they learn to create, populate and query data. In the next section of the data
section of the course, we will step through a complete workflow including data
cleaning and transformation, illustrating many of the practical challenges faced
at the outset of any data analysis or data science project. The course will be
concluded with the discussion of performance issues in computation with the
particular focus on parallel computing.

### Resources

This class is supported by [DataCamp](https://www.datacamp.com/), the most intuitive learning platform for data science.  Learn R, Python and SQL the way you learn best through a combination of short expert videos and hands-on-the-keyboard exercises. Take over 100+ courses by expert instructors on topics such as importing data, data visualization or machine learning and learn faster through immediate and personalised feedback on every exercise.

### Assessment

#### Formative coursework

Students will be expected to produce five weekly, structured problem sets with a
beginning component to be started in the staff-led lab sessions, to be
completed by the student outside of class. Answers should be formatted and
submitted for assessment. One or more of these problem sets will be completed
in collaboration with other students.

#### Summative Assignments

Take home exam (50%) and in class assessment (50%).

Student problem sets will be marked and will provide 50% of the mark.

#### Assessment criteria

Assignments will be marked using the following criteria:

- 70–100: Very Good to Excellent (Distinction). Perceptive, focused use of a good depth of material with a critical edge. Original ideas or structure of argument.

- 60–69: Good (Merit).  Perceptive understanding of the issues plus a coherent well-read and stylish treatment though lacking originality

- 50–59: Satisfactory (Pass). A “correct” answer based largely on lecture material. Little detail or originality but presented in adequate framework. Small factual errors allowed.

- 30–49: Unsatisfactory (Fail) and 0–29: Unsatisfactory (Bad fail). Based entirely on lecture material but unstructured and with increasing error component. Concepts are disordered or flawed. Poor presentation. Errors of concept and scope or poor in knowledge, structure and expression.

Some of the assignemnts will involve shorter questions, to which the answers can be relatively unambiguously coded as (fully or partially) correct or incorrect. In the marking, these questions may be further broken down into smaller steps and marked step by step. The final mark is then a function of the proportion of parts of the questions which have been answered correctly. In such marking, the principle of partial credit is observed as far as feasible. This means that an answer to a part of a question will be treated as correct when it is correct conditional on answers to other parts of the question, even if those other parts have been answered incorrectly.

### Detailed Course Schedule

### Schedule

#### 1. Introduction to data

In the first week, we will introduce the basic concepts of the course, including how data is recorded, stored, and shared. Because the course relies fundamentally on GitHub, a collaborative code and data sharing platform, we will introduce the use of git and GitHub, using the lab session to guide students through in setting up an account and subscribing to the course organisation and assignments.

This week will also introduce basic data types, in a language-agnostic manner, from the perspective of machine implementations through to high-level programming languages. We will then focus on how basic data types are implemented in R.

##### Resources
- [Lecture slides](week01/MY472-week01-intro.pdf)
- [git and GitHub notes](week01/MY472-week01-GitHub.pdf)
- R example: [Introduction to RMarkdown](week01/01-RMarkdown.html) and as [rmd source](https://github.com/lse-my472/lse-my472.github.io/blob/master/week01/01-RMarkdown.rmd)
- R example: [vectors, lists, data frames](https://github.com/lse-my472/lse-my472.github.io/blob/master/week01/02-intro-to-R.md)

##### Required reading
* Wickham, Hadley.  Nd.  _Advanced R_, 2nd ed.  Ch 3, [Names and values](https://adv-r.hadley.nz/names-values.html), Chapter 4, [Vectors](https://adv-r.hadley.nz/vectors-chap.html), and Chapter 5, [Subsetting](https://adv-r.hadley.nz/subsetting.html). (Ch. 2-3 of the print edition),
* [GitHub Guides](https://guides.github.com), especially: "Understanding the GitHub Flow", "Hello World", and "Getting Started with GitHub Pages".
* GitHub.  "[Markdown Syntax](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf)" (a cheatsheet).

##### Recommended Reading
* Lake, P. and Crowther, P. 2013. _Concise guide to databases: A Practical Introduction_.  London: Springer-Verlag.  Chapter 1, [Data, an Organizational Asset](https://books.google.co.uk/books?id=SuK2BAAAQBAJ&pg=PA301&lpg=PA301&dq=Concise+Guide+to+Databases+pdf&source=bl&ots=pEJj8miMrf&sig=3nrRgpk3kF7fXzcWUWpJ_uzpfl0&hl=en&sa=X&ved=0ahUKEwiAkM3JrbHWAhXE7xQKHWseCZAQ6AEISzAH#v=onepage&q=Concise%20Guide%20to%20Databases%20pdf&f=false)
* Nelson, Meghan.  2015.  "[An Intro to Git and GitHub for Beginners (Tutorial).](http://product.hubspot.com/blog/git-and-github-tutorial-for-beginners)"
* Jim McGlone, "[Creating and Hosting a Personal Site on GitHub
A step-by-step beginner's guide to creating a personal website and blog using Jekyll and hosting it for free using GitHub Pages.](http://jmcglone.com/guides/github-pages/)".

##### [Lab: Working with git and GitHub**](https://github.com/lse-my472/pset1)
*  Installing git and setting up an account on GitHub
*  How to complete and submit assignments using GitHub Classroom
*  Forking and correcting a broken RMarkdown file
*  Cloning a website repository, modifying it, and publishing a personal webpage


#### 2. The shape of data

This week moves beyond the rectangular format common in statistical datasets, modeled on a spreadsheet, to cover relational structures and the concept of database normalization. We will also cover ways to restructure data from "wide" to "long" format, within strictly rectangular data structures.  Additional topics concerning text encoding, date formats, and sparse matrix formats are also covered.

##### Resources
- [Lecture slides](week02/MY472-week02-shape.pdf)
- R examples: [data frames](week02/03-data-frames.rmd), [merging and reshaping](week02/04-merging-reshaping.rmd), and [loops and functions](week02/05-loops-functions.rmd)

##### Required reading
* Wickham, Hadley and Garett Grolemund.  2017.  _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data_.  Sebastopol, CA: O'Reilly.  [Part II Wrangle](http://r4ds.had.co.nz/wrangle-intro.html), [Tibbles](http://r4ds.had.co.nz/tibbles.html), [Data Import](http://r4ds.had.co.nz/data-import.html), [Tidy Data](http://r4ds.had.co.nz/tidy-data.html) (Ch. 7-9 of the print edition).
* The [**reshape2** package](http://had.co.nz/reshape/) for R.

##### [Lab: Reshaping data in R**]

##### Assignment 1: Data cleaning in R. Deadline: October 18.   


#### 3. Cloud computing

In this week, we focus on the setup of computation environments on the Internet. We will introduce the cloud computing concepts and learn why the big shift to the cloud computing is occurring in the industry and how it is relevant to us as data scientists. In the lab, we will have an introduction to the cloud environment setup using Amazon Web Services. We will sign up an account, launch a cloud computing environment, create a webpage, and set up a statistical computing environment.

##### Resources
- [Lecture slides](week03/MY472-week03-cloud.html)
- [Class slides](week03/MY472-week03-AWS-Lab3.pdf)

##### Required reading
* Rajaraman, V. 2014. "[Cloud Computing.](https://www.ias.ac.in/article/fulltext/reso/019/03/0242-0258)" Resonance 19(3): 242–58.
* AWS: [What is cloud computing](https://aws.amazon.com/what-is-cloud-computing/).
* Azure: [Developer guide](https://docs.microsoft.com/en-us/azure/guides/developer/azure-developer-guide).

##### Recommended reading
* Puparelia, Nayan. 2016. "Cloud Computing." MIT Press. Ch. 1-3.
* Botta, Alessio, Walter De Donato, Valerio Persico, and Antonio Pescapé. 2016. "[Integration of Cloud Computing and Internet of Things: A Survey.](http://iranarze.ir/wp-content/uploads/2017/03/6229-English-IranArze.pdf)" Future Generation Computer Systems 56: 684–700.

##### Lab: Working with AWS

* Setup an AWS account (link from Moodle for AWS Educate free account)
* Secure the account
* Configure EC2 instance
* Work with EC2 instance
    - Login EC2-Linux Console
    - Set up a web server
    - Install R, some packages
    - Stop the instance
* [Link to the github classroom]()
<!-- * [Attendance Survey](https://lse.eu.qualtrics.com/jfe/form/SV_9B6qLasJrI88CJT)-->


#### 4. HTML and CSS

From week 4 to week 7, we will learn how to get the data from the Internet. This week introduces the basics, including markup languages (HTML, XML, and Markdown) and other common data formats such as JSON (Javascript Object Notation).  We also cover basic web scraping, to turn web data into text or numbers.  We will also cover the client-server model, and how machines and humans transmit data over networks and to and from databases.

##### Resources
- [Lecture slides](week04/MY472-week04.pdf)
- [Class slides](week04/MY472-AWS-Lab3.pdf)

##### Required Reading
* Lazer, David, and Jason Radford. 2017. “[Data Ex Machina: Introduction to Big Data.](https://doi.org/10.1146/annurev-soc-060116-053457)” _Annual Review of Sociology_ 43(1): 19–39.
* Howe, Shay. 2015.  [_Learn to Code HTML and CSS: Develop and Style Websites_](http://learn.shayhowe.com/html-css/).  New Riders.  Chs 1-8.
* Kingl, Arvid. 2018. [_Web Scraping in R: rvest Tutorial_](https://www.datacamp.com/community/tutorials/r-web-scraping-rvest).

##### Recommended reading
* Munzert, Simon, Christian Rubba, Peter Meissner, and Dominic Nyhuis D. 2014. _Automated Data Collection with R: A Practical Guide to Web Scraping and Text Mining_. Hoboken, NJ/Chichester, UK:Wiley & Sons. Ch. 2-4, 9.
* Severance, Charles Russell. 2015. [_Introduction to Networking: How the Internet Works_](http://www.net-intro.com).  Charles Severance, 2015.
* Duckett, Jon. 2011. _HTML and CSS: Design and Build Websites_.  New York: Wiley.

##### Lab: Web scraping 1
- Scraping tables
- Scraping unstructured data
* [Attendance Survey](https://lse.eu.qualtrics.com/jfe/form/SV_5aOLpBO9PluOdmZ)

##### Assignment 2: Webscraping
* [Link to the GitHub classroom]().  Deadline: November 1.


#### 5. Using data from the Internet

Continuing from the material covered in Week 4, we will learn the advanced topics in scraping the web. The topics include the scraping documents in XML (such as RSS), scraping websites beyond the authentication, and websites with non-static components.

##### Resources
- [Lecture slides](week05/MY472-week05.pdf)

##### Required Reading
* Sai Swapna Gollapudi. 2018. [_Learn Web Scraping and Browser Automation Using RSelenium in R_](https://analyticsprofile.com/business-analytics/learn-web-scraping-and-browser-automation-using-rselenium-in-r/).
* Wickham, Hadley. 2015. [_Parse and process XML (and HTML) with xml2_](https://blog.rstudio.com/2015/04/21/xml2/)
* Mozilla Developer Web Docs. [_What is JavaScript_](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/What_is_JavaScript).

##### Recommended Readings
* Schouwenaars, Filip. 2015. [_Web Scraping with R and PhantomJS_](https://www.datacamp.com/community/tutorials/scraping-javascript-generated-data-with-r).
* Mozilla Developer Web Docs. [_A First Splash into JavaScript_](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/A_first_splash).

##### Lab: Web scraping
- Scraping Newspaper RSS
- Scraping with Selenium
<!-- * [Attendance Survey](https://lse.eu.qualtrics.com/jfe/form/SV_cZUi4kx7gdQTKzr) -->
* [Markdown files](https://classroom.github.com/a/wvnfoMId)


#### 6. Reading week


#### 7. Working with APIs

##### Resources
- [Lecture slides](week07/MY472-week07.pdf)

How to work with Application Programming Interfaces (APIs), which offer developers and researchers access to data in a structured format. Our running examples will be the New York Times API and the Twitter API.

##### Required Reading
* Steinert-Threlkeld. 2018. [_Twitter as Data_](https://www.cambridge.org/core/elements/twitter-as-data/27B3DE20C22E12E162BFB173C5EB2592). Cambridge University Press.

##### Recommended Reading
* Ruths and Pfeffer. 2014. [_Social media for large studies of behavior_](http://science.sciencemag.org/content/346/6213/1063.full). Science.

##### Lab: APIs
- Interacting with the New York Times API
- Interacting with Twitter's REST and Streaming API

##### Assignment 3: APIs
- [Link to GitHub classroom](). Deadline: November 26.


#### 8. Textual data

We will learn how to work with unstructured data in the form of text, and how to deal with format conversion, encoding problems, and serialization.  We will also cover search and replace operations using regular expressions, as well as the most common textual data types in R and Python.

##### Resources
- [Lecture slides](week08/MY472-week08.pdf)
- [Regular expressions cheat sheet](week08/regular-expressions-cheat-sheet-v2.pdf)

##### Required Reading
* TBC

##### Recommended Reading
* TBC

##### Lab
- Working with textual data.


#### 9. Data visualisation

The lecture this week will offer an overview of the principles of exploratory data analysis through (good) data visualization. In the seminars, we will practice producing our own graphs using ggplot2.

##### Resources
- [Lecture slides](week09/MY472-week09.pdf)

##### Required Reading
* Wickham, Hadley and Garett Grolemund.  2017.  _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data_.  Sebastopol, CA: O'Reilly.  [Data visualization](https://r4ds.had.co.nz/data-visualisation.html), [Graphics for communication](https://r4ds.had.co.nz/graphics-for-communication.html) (Ch. 1 and 22 of the print edition).
* Hughes, A. (2015) ["Visualizing inequality: How graphical emphasis
shapes public opinion"](https://journals.sagepub.com/doi/abs/10.1177/2053168015622073) Research and Politics.

##### Recommended Reading
* Tufte, E. (2002) ["The visual display of quantitative information"](https://www.edwardtufte.com/tufte/books_vdqi).

##### Lab
- Data visualization with ggplot2.
- Attendance Survey: [https://lse.eu.qualtrics.com/jfe/form/SV_026nI6GIJtNmuq1](https://lse.eu.qualtrics.com/jfe/form/SV_026nI6GIJtNmuq1)
- Github Classroom: [https://classroom.github.com/a/lNhyTTip](https://classroom.github.com/a/lNhyTTip)


#### 10. Creating and managing databases

This session will offer an introduction to relational databases: structure, logic, and main types. We will learn how to write SQL code, a language designed to query this type of databases that is currently employed by most tech companies; and how to use it from R using the DBI package.


##### Resources
- [Lecture slides](week10/MY472-week10.pdf)

##### Required Reading
* Beaulieu. 2009. [_Learning SQL_](https://books.google.co.uk/books?hl=en&lr=&id=1PgCCVryjOQC&oi=fnd&pg=PR3&dq=learning+sql+alan&ots=X6M3Iaz1wO&sig=38Fp1kDlxM8TF7miw0K2CNcKib4#v=onepage&q=learning%20sql%20alan&f=false). O'Reilly. (Chapters 1, 3, 4, 5, 8)

##### Recommended Readings
* Stephens et al. 2009. [_Teach yourself SQL in one hour a day_](https://books.google.co.uk/books?hl=en&lr=&id=9fDZ_rVoxx0C&oi=fnd&pg=PR5&dq=%22Sams+Teach+Yourself+SQL+in+24+Hours%22&ots=UkaClJDMem&sig=wgLy-DG3bc7g0LO0_Ojy5Cy2Ejs#v=onepage&q=%22Sams%20Teach%20Yourself%20SQL%20in%2024%20Hours%22&f=false). Sam's Publishing.

##### Lab: SQL
- Analyzing public Facebook data in a SQLite database


#### 11. Interacting with online databases

This week, we will dive deeper into the databases. In particular, this week covers following topics: How to set up and use relational databases in the cloud, how to obtain big data analytics through data warehousing services (e.g. Google BigQuery), and fundamentals of noSQL databases.

##### Resources
- [Lecture slides](week11/MY472-week11.pdf)

##### Required Reading
* Beaulieu. 2009. [_Learning SQL_](https://books.google.co.uk/books?hl=en&lr=&id=1PgCCVryjOQC&oi=fnd&pg=PR3&dq=learning+sql+alan&ots=X6M3Iaz1wO&sig=38Fp1kDlxM8TF7miw0K2CNcKib4#v=onepage&q=learning%20sql%20alan&f=false). O'Reilly. (Chapters 2)
* Hows, Membrey, and Plugge. 2014. [_MongoDB Basics_](https://books.google.co.uk/books?id=kmQnCgAAQBAJ&printsec=frontcover&dq=mongodb+basics&hl=en&sa=X&ved=0ahUKEwjPt7Cnv-PeAhUHBcAKHWQeBe0Q6wEIKzAA#v=onepage&q&f=false). Apress. (Chapter 1)
* Tigani and Naidu. 2017. [_Google BigQuery Analytics_](https://books.google.co.uk/books?id=LDaiAwAAQBAJ&printsec=frontcover&dq=bigquery&hl=en&sa=X&ved=0ahUKEwj6yZ-MvOPeAhXHCcAKHWJxBSEQ6AEIMzAB#v=onepage&q&f=false). Weily. (Chapters 1-3)

##### Recommended Reading
* [MongoDB Basics](https://www.edx.org/course/mongodb-basics) on edX
* [Analyzing Big Data in less time with Google BigQuery](https://www.youtube.com/watch?v=qqbYrQGSibQ) on YouTube

##### Lab
- SQL JOINs and subqueries (in the [lecture folder](week11))

##### Assignment 5: Databases. 
- Link. Deadline: December 13.


#### Take-home exam

Deadline: January 17, 14:00.
