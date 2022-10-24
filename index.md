---
papersize: a4
documentclass: scrartcl
classoption: DIV=14
colorlinks: true
---

<!-- ![LSE](images/lse-logo.jpg) -->
# MY472 Data for Data Scientists

### Michaelmas Term 2022

[Main course repo](https://github.com/lse-my472/lse-my472.github.io)

### Prerequisites

All students are required to complete the preparatory course 'R Advanced for Methodology' early in Michaelmas Term, ideally in weeks 0 and 1. You will find the link to the preparatory course on the Moodle page of MY472.

### Instructors

Office hour slots to be booked via LSE's StudentHub

* [Friedrich Geiecke](f.c.geiecke@lse.ac.uk), Department of Methodology.  *Office hours*: Tuesdays 5-7pm (book via Student Hub)
* Yuhao Qian

### Course information

* Lecture:
    - Tuesdays 9-11am, MAR.2.08
* Classes:
    - Thursdays 1-3pm, NAB.2.08
    - Thursdays 5-6pm, NAB.2.16

No lectures or classes will take place during (Reading) Week 6.


### Quick links to topics

| Week | Date |  Topic |  
|:--:|-------:|:------|  
| 1  |  27 Sep | [Introduction](#1-introduction) |  
| 2  |  4 Oct | [Tabular data](#2-tabular-data) |  
| 3  | 11 Oct | [Data visualisation](#3-data-visualisation) |  
| 4  | 18 Oct | [Textual data](#4-textual-data) |  
| 5  | 25 Oct | [HTML and CSS](#5-html-and-css) |
| 6  |  1 Nov | _Reading week_ |  
| 7  | 7 Nov | [XML, RSS, and scraping non-static pages](#7-xml,-rss,-and-scraping-non-static-pages) |   
| 8  | 14 Nov | [Working with APIs](#8-working-with-apis) |  
| 9  | 21 Nov | [Creating and managing databases](#9-creating-and-managing-databases) |  
| 10 |  28 Nov | [Interacting with online databases](#10-interacting-with-online-databases)|  
| 11 | 5 Dec | [Cloud Computing](#11-cloud-computing) |  



### Course description

This course covers the principles of collecting, processing, and storing data with R. It also covers workflow management for typical data transformation and cleaning projects, frequently the starting point and most time-consuming part of any data science project.  We use a project-based learning approach towards the study of computation and some group-based collaboration, essential parts of modern data science work. We also make frequent use of version control and collaboration tools such as Git and GitHub.

We will begin by discussing Git and R fundamentals, and continue with an introduction to reshaping data in R. Afterwards it follows an overview of visualisation with ggplot2. We then learn how to work with unstructured data in the form of text. We will continue with a discussion of common data types on the internet such as markup languages (e.g. HTML and XML) and study the fundamentals of acquisition of data from the internet through scraping of websites. We will then download data from web APIs. Afterwards we will discuss databases, especially relational databases. Students will be introduced to SQL through SQLite, and programming assignments in this unit of the course will be designed to ensure that students learn to create, populate and query an SQL database. We will then discuss NoSQL using MongoDB for comparison. The course will be concluded with a discussion of cloud computing. Students will first learn the basics of cloud computing that can serve various purposes such data analysis and then how to set up a cloud computing environment through Amazon Web Services, a popular cloud platform.


### Assessment

#### Summative assignments

Four term-time assignment (50%) and one final assignment (50%).

#### Assessment criteria

Assignments will be marked using the following criteria:

- 70–100: Very Good to Excellent (Distinction). Perceptive, focused use of a good depth of material with a critical edge. Original ideas or structure of argument.

- 60–69: Good (Merit).  Perceptive understanding of the issues plus a coherent well-read and stylish treatment though lacking originality

- 50–59: Satisfactory (Pass). A “correct” answer based largely on lecture material. Little detail or originality but presented in adequate framework. Small factual errors allowed.

- 30–49: Unsatisfactory (Fail) and 0–29: Unsatisfactory (Bad fail). Based entirely on lecture material but unstructured and with increasing error component. Concepts are disordered or flawed. Poor presentation. Errors of concept and scope or poor in knowledge, structure and expression.

Some of the assignments will involve shorter questions, to which the answers can be relatively unambiguously coded as (fully or partially) correct or incorrect. In the marking, these questions may be further broken down into smaller steps and marked step by step. The final mark is then a function of the proportion of parts of the questions which have been answered correctly. In such marking, the principle of partial credit is observed as far as feasible. This means that an answer to a part of a question will be treated as correct when it is correct conditional on answers to other parts of the question, even if those other parts have been answered incorrectly.

### Detailed course schedule

### Schedule

#### 1. Introduction

In the first week, we will introduce some basic concepts of how data is recorded and stored, and we will also review R fundamentals. Because the course relies fundamentally on GitHub, a collaborative code and data sharing platform, we will also discuss the use of git and GitHub.

##### Lecture

- [Slides](week01/MY472-week01-intro.pdf)
- Code: [A plain R script](week01/00-standard-script.R), [a first R markdown example](week01/01-rmarkdown.Rmd), and a recap on [vectors, lists, data frames](week01/02-vectors-lists-dfs.Rmd)
- [Seminar](week01/seminar1.pdf)

##### Seminar

* Review of Git/GitHub basics discussed in lecture
* Branches, merges, and pull requests


##### Readings
* Wickham, Hadley.  Nd.  _Advanced R_, 2nd ed.  Ch 3, [Names and values](https://adv-r.hadley.nz/names-values.html), Chapter 4, [Vectors](https://adv-r.hadley.nz/vectors-chap.html), and Chapter 5, [Subsetting](https://adv-r.hadley.nz/subsetting.html). (Ch. 2-3 of the print edition),
* [GitHub Guides](https://guides.github.com), especially: "Understanding the GitHub Flow", "Hello World", and "Getting Started with GitHub Pages".
* GitHub.  "[Markdown Syntax](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf)" (a cheatsheet).

##### Additional readings
* Lake, P. and Crowther, P. 2013. _Concise guide to databases: A Practical Introduction_.  London: Springer-Verlag.  Chapter 1, [Data, an Organizational Asset](https://books.google.co.uk/books?id=SuK2BAAAQBAJ&pg=PA301&lpg=PA301&dq=Concise+Guide+to+Databases+pdf&source=bl&ots=pEJj8miMrf&sig=3nrRgpk3kF7fXzcWUWpJ_uzpfl0&hl=en&sa=X&ved=0ahUKEwiAkM3JrbHWAhXE7xQKHWseCZAQ6AEISzAH#v=onepage&q=Concise%20Guide%20to%20Databases%20pdf&f=false)
* Nelson, Meghan.  2015.  "[An Intro to Git and GitHub for Beginners (Tutorial).](http://product.hubspot.com/blog/git-and-github-tutorial-for-beginners)"
* Jim McGlone, "[Creating and Hosting a Personal Site on GitHub
A step-by-step beginner's guide to creating a personal website and blog using Jekyll and hosting it for free using GitHub Pages.](http://jmcglone.com/guides/github-pages/)".



#### 2. Tabular data

This week discusses processing tabular data in R with functions from the `tidyverse` after some further review of R fundamentals.

##### Lecture

- [Slides](week02/MY472-week02-tabular.pdf)
- Code: [Conditionals, loops, and functions](week02/01-conditionals-loops-functions.Rmd), [data processing in R](week02/02-processing-data.Rmd), [industrial production dataset](week02/ip.csv), and [industrial production and unemployment dataset](week02/ip_and_unemployment.csv)

##### Seminar

- Code: [Dplyr exercises](week02/03-exercises-tabular-data.Rmd), [solution](week02/03-exercises-tabular-data-solution.Rmd)


##### Reading
* Wickham, Hadley and Garett Grolemund.  2017.  _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data_.  Sebastopol, CA: O'Reilly.  [Part II Wrangle](http://r4ds.had.co.nz/wrangle-intro.html), [Tibbles](http://r4ds.had.co.nz/tibbles.html), [Data Import](http://r4ds.had.co.nz/data-import.html), [Tidy Data](http://r4ds.had.co.nz/tidy-data.html) (Ch. 7-9 of the print edition).
* The [Tidyverse collection of packages](https://www.tidyverse.org/) for R.


##### Assignment 1: Processing data in R (practise assignment)
- GitHub Classroom link available via Moodle on Monday, 3 October, 2pm
- Deadline on Friday, 14 October, 2pm



#### 3. Data visualisation

The lecture this week will offer an overview of the principles of exploratory data analysis through (good) data visualization. In the coding session and seminars, we will practice producing our own graphs using ggplot2.


##### Lecture

- [Slides](week03/MY472-week03-visualisation.pdf)
- Code: [Anscombe](week03/01-anscombe.Rmd), [ggplot2 examples one](week03/02-ggplot2-basics.Rmd), [ggplot2 examples two](week03/03-scales-axes-legends.Rmd)


##### Seminar

- Code: [Exercises in visualistion](week03/04-exercises-visualisation.Rmd), [solution](week03/04-exercises-visualisation-solution.Rmd)


##### Reading

* Wickham, Hadley and Garett Grolemund.  2017.  _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data_.  Sebastopol, CA: O'Reilly.  [Data visualization](https://r4ds.had.co.nz/data-visualisation.html), [Graphics for communication](https://r4ds.had.co.nz/graphics-for-communication.html) (Ch. 1 and 22 of the print edition).

##### Further reading
* Hughes, A. (2015) ["Visualizing inequality: How graphical emphasis
shapes public opinion"](https://journals.sagepub.com/doi/abs/10.1177/2053168015622073) Research and Politics.
* Tufte, E. (2002) ["The visual display of quantitative information"](https://www.edwardtufte.com/tufte/books_vdqi).



#### 4. Textual data

We will learn how to work with unstructured data in the form of text and discuss character encoding, search and replace with regular expressions, and elementary quantitative textual analysis.

##### Lecture

- [Slides](week04/MY472-week04-text.pdf)
- Code: [Regular expressions in R](week04/01-regular-expressions-in-r.Rmd), [text analysis](week04/02-text-analysis.Rmd), [parsing pdfs](week04/03-parsing-pdfs.Rmd)

##### Seminar

- Code: [Exercises in text analysis](week04/04-exercises-text-analysis.Rmd), [solution](week04/04-exercises-text-analysis-solution.Rmd)


##### Reading
* Kenneth Benoit. July 16, 2019. "[Text as Data: An Overview](https://kenbenoit.net/pdfs/28%20Benoit%20Text%20as%20Data%20draft%202.pdf)" Forthcoming in Cuirini, Luigi and Robert Franzese, eds. Handbook of Research Methods in Political Science and International Relations. Thousand Oaks: Sage.


##### Further reading
- Wickham, Hadley and Garett Grolemund.  2017, [Chapter 14](http://r4ds.had.co.nz/strings.html)
- [Regular expressions cheat sheet](week04/regular-expressions-cheat-sheet-v2.pdf)
- [Regular expressions in R vignette](https://cran.r-project.org/web/packages/stringr/vignettes/regular-expressions.html)


##### Assignment 2: Data visualisation
- GitHub Classroom link available via Moodle on Monday, 17 October, 2pm
- Deadline on Friday, 28 October, 2pm



#### 5. HTML and CSS

In this week, we will learn how to obtain the data from the internet. This week we cover basic web scraping to turn web data into text or numbers. We will also discuss the client-server model.

##### Lecture

- [Slides](week05/MY472-week05-scraping-1.pdf)
- Code: [Website example](week05/data/website_5.html), [selecting elements](week05/01-selecting-elements.Rmd), [scraping tables](week05/02-scraping-tables.Rmd)


##### Seminar

- Code: [Scraping unstructured data](week05/03-exercises-scraping-unstructured-data.Rmd)


##### Reading
* Lazer, David, and Jason Radford. 2017. “[Data Ex Machina: Introduction to Big Data.](https://doi.org/10.1146/annurev-soc-060116-053457)” _Annual Review of Sociology_ 43(1): 19–39.
* Howe, Shay. 2015.  [_Learn to Code HTML and CSS: Develop and Style Websites_](http://learn.shayhowe.com/html-css/).  New Riders.  Chs 1-8.
* Kingl, Arvid. 2018. [_Web Scraping in R: rvest Tutorial_](https://www.datacamp.com/community/tutorials/r-web-scraping-rvest).

##### Further reading
* Munzert, Simon, Christian Rubba, Peter Meissner, and Dominic Nyhuis D. 2014. _Automated Data Collection with R: A Practical Guide to Web Scraping and Text Mining_. Hoboken, NJ/Chichester, UK:Wiley & Sons. Ch. 2-4, 9.
* Severance, Charles Russell. 2015. [_Introduction to Networking: How the Internet Works_](http://www.net-intro.com).  Charles Severance, 2015.
* Duckett, Jon. 2011. _HTML and CSS: Design and Build Websites_.  New York: Wiley.


#### 6. Reading week

##### Assignment 3: Web scraping

- GitHub Classroom link available via Moodle on Monday, 31 October, 2pm
- Deadline on Friday, 11 November, 2pm



#### 7. XML, RSS, and scraping non-static pages

Continuing from the material covered in Week 5, we will learn the advanced topics in scraping the web. The topics include the scraping documents in XML (such as RSS), and scraping websites with non-static components with Selenium.

##### Lecture

- [Slides](week07/MY472-week07-scraping-2.pdf)
- Code: [Scraping RSS](week07/01-newspaper-rss.Rmd), [introduction to RSelenium](week07/02-introduction-to-selenium.Rmd), [RSelenium example with the LSE website](week07/03-selenium-lse.Rmd)

##### Seminar

- Code: [Scraping UK election data](week07/04-exercises-advanced-scraping.Rmd)


##### Reading
* [_XML_](https://www.w3schools.com/xml/xml_whatis.asp)
* [_RSS_](https://www.w3schools.com/xml/xml_rss.asp)
* [_XPath syntax_](https://www.w3schools.com/xml/xpath_syntax.asp)
* [_RSelenium vignette_](https://cran.r-project.org/web/packages/RSelenium/vignettes/basics.html)


##### Further reading
* Mozilla Developer Web Docs. [_What is JavaScript_](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/What_is_JavaScript).
* [_Web Scraping with R and PhantomJS_](https://www.datacamp.com/community/tutorials/scraping-javascript-generated-data-with-r).
* Mozilla Developer Web Docs. [_A First Splash into JavaScript_](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/A_first_splash).



#### 8. Working with APIs

This week discusses how to work with Application Programming Interfaces (APIs) that offer developers and researchers access to data in a structured format. Our running examples will be the New York Times API and the Twitter API.

##### Lecture

- [Slides](week08/MY472-week08-APIs.pdf)
- Code: [JSON in R](week08/01-json-in-r.Rmd), [NYT API](week08/02-nytimes-api.Rmd), [Twitter REST API](week08/03-twitter-rest-api.Rmd)


##### Seminar

- Code: [Twitter streaming API](week08/04-exercises-twitter-streaming-api.Rmd)


##### Reading
* Steinert-Threlkeld. 2018. [_Twitter as Data_](https://www.cambridge.org/core/elements/twitter-as-data/27B3DE20C22E12E162BFB173C5EB2592). Cambridge University Press.

##### Further reading
* Ruths and Pfeffer. 2014. [_Social media for large studies of behavior_](http://science.sciencemag.org/content/346/6213/1063.full). Science.

##### Assignment 4: APIs

- GitHub Classroom link available via Moodle on Monday, 14 November, 2pm
- Deadline on Friday, 25 November, 2pm


#### 9. Creating and managing databases

This session will offer an introduction to relational databases: structure, logic, and main types. We will learn how to write SQL code, a language designed to query this type of databases that is currently employed by many companies; and how to use it from R using the DBI package.

##### Lecture

- [Slides](week09/my472-week09-sql.pdf)
- Code: [SQL introduction](week09/01-sql-intro.Rmd), [join and aggregation in SQL](week09/02-sql-join-and-aggregation.Rmd)


##### Seminar

- Code: [SQL exercises](03-exercises-sql.Rmd)

##### Reading
* Beaulieu. 2009. [_Learning SQL_](https://books.google.co.uk/books?hl=en&lr=&id=1PgCCVryjOQC&oi=fnd&pg=PR3&dq=learning+sql+alan&ots=X6M3Iaz1wO&sig=38Fp1kDlxM8TF7miw0K2CNcKib4#v=onepage&q=learning%20sql%20alan&f=false). O'Reilly. (Chapters 1, 3, 4, 5, 8)

##### Further reading
* Stephens et al. 2009. [_Teach yourself SQL in one hour a day_](https://books.google.co.uk/books?hl=en&lr=&id=9fDZ_rVoxx0C&oi=fnd&pg=PR5&dq=%22Sams+Teach+Yourself+SQL+in+24+Hours%22&ots=UkaClJDMem&sig=wgLy-DG3bc7g0LO0_Ojy5Cy2Ejs#v=onepage&q=%22Sams%20Teach%20Yourself%20SQL%20in%2024%20Hours%22&f=false). Sam's Publishing.


#### 10. NoSQL and online databases

This week covers how to set up and use relational databases in the cloud and fundamentals of a document based NoSQL database.

##### Lecture

- [Slides](week10/my472-week10-nosql-and-cloud-db.pdf)
- Code: [Creating own databases in the cloud](week10/01-bigquery-create-own-databases.Rmd), [querying large cloud databases](week10/02-bigquery-examples.Rmd), [MongoDB](week10/03-mongodb-demo.Rmd)

##### Seminar

- Code: [Exercises BigQuery](week10/04-exercises-bigquery.Rmd), [SQL joins](week10/05-exercises-sql-joins.Rmd), [SQL subqueries](06-exercises-sql-subqueries.Rmd)

##### Required reading
* Beaulieu. 2009. [_Learning SQL_](https://books.google.co.uk/books?hl=en&lr=&id=1PgCCVryjOQC&oi=fnd&pg=PR3&dq=learning+sql+alan&ots=X6M3Iaz1wO&sig=38Fp1kDlxM8TF7miw0K2CNcKib4#v=onepage&q=learning%20sql%20alan&f=false). O'Reilly. (Chapters 2)
* Hows, Membrey, and Plugge. 2014. [_MongoDB Basics_](https://books.google.co.uk/books?id=kmQnCgAAQBAJ&printsec=frontcover&dq=mongodb+basics&hl=en&sa=X&ved=0ahUKEwjPt7Cnv-PeAhUHBcAKHWQeBe0Q6wEIKzAA#v=onepage&q&f=false). Apress. (Chapter 1)
* Tigani and Naidu. 2017. [_Google BigQuery Analytics_](https://books.google.co.uk/books?id=LDaiAwAAQBAJ&printsec=frontcover&dq=bigquery&hl=en&sa=X&ved=0ahUKEwj6yZ-MvOPeAhXHCcAKHWJxBSEQ6AEIMzAB#v=onepage&q&f=false). Weily. (Chapters 1-3)


##### Recommended reading
* [Analyzing Big Data in less time with Google BigQuery](https://www.youtube.com/watch?v=qqbYrQGSibQ) on YouTube


##### Assignment 5: Databases

- GitHub Classroom link available via Moodle on Monday, 28 November, 2pm
- Deadline on Friday, 9 December, 2pm


#### 11. Cloud computing

In this week, we focus on the setup of computation environments on the Internet. We will introduce the cloud computing concepts and learn why the big shift to the cloud computing is occurring in the industry and how it is relevant to data scientists. We will then set up different instances in the cloud and study cloud computing through an example of continuous scraping.

##### Lecture

- [Slides](week11/my472-week11-cloud.pdf)
- [Connecting to the instance with Windows via PuTTY](week11/manual-for-windows.pdf)
- Code: [Hello world](week11/hello_world.R), [continuous scraping within R only](week11/scraping_example_r_only.R), [installing R packages on the EC2 instance](week11/install_packages.R), [continuous scraping via a schedule](week11/scraping_example_to_schedule.R)
- Optional code: [Using storage outside the EC2 instance](week11/using-s3-through-r.Rmd)

##### Seminar

- Code: [Exercises in parallel computing](exercises-parallel-computing.Rmd)


##### Reading
* Rajaraman, V. 2014. "[Cloud Computing.](https://www.ias.ac.in/article/fulltext/reso/019/03/0242-0258)" Resonance 19(3): 242–58.
* AWS: [What is cloud computing](https://aws.amazon.com/what-is-cloud-computing/).
* Azure: [Developer guide](https://docs.microsoft.com/en-us/azure/guides/developer/azure-developer-guide).

##### Further reading
* Puparelia, Nayan. 2016. "Cloud Computing." MIT Press. Ch. 1-3.
* Botta, Alessio, Walter De Donato, Valerio Persico, and Antonio Pescapé. 2016. "[Integration of Cloud Computing and Internet of Things: A Survey.](http://iranarze.ir/wp-content/uploads/2017/03/6229-English-IranArze.pdf)" Future Generation Computer Systems 56: 684–700.


#### Take-home exam
- GitHub Classroom link available via Moodle on ...
- Deadline on Monday, 16 January, 2pm
