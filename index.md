---
papersize: a4
documentclass: scrartcl
classoption: DIV=14
colorlinks: true
---

Welcome!
  
## Course format and scheduling

**Lectures:** There is a two-hour lecture each week during the term on **Wednesdays from 13:00 to 15:00 in CLM.2.02**.

**Seminars:** There is a one-hour "lab-style" seminar each week during the term. See the [LSE Timetable](https://info.lse.ac.uk/Current-Students/Timetables) for the schedule and locations for the seminars.

_There are no lectures or seminars during week 6, which is LSE's reading week._

## Important course links

- [Course Moodle page](https://moodle.lse.ac.uk/course/view.php?id=10954)
- [Course GitHub repository](https://github.com/lse-my472/lse-my472.github.io)

## Instructors

Office hour slots with all instructors should be booked via LSE's [StudentHub](https://studenthub.lse.ac.uk/).

* [Ryan Hübert](mailto:r.hubert@lse.ac.uk), Department of Methodology. _Course convenor_.
* [Dan de Kadt](mailto:d.n.de-kadt@lse.ac.uk), Department of Methodology.
* [Charlotte Kuberka](mailto:l.kuberka@lse.ac.uk), Department of Government.

## Assessments

|  |  Type |  Due date  |
|:--:|:-------|:------|
| 1 | Formative in-class exercises | during seminars |
| 2 | [Formative practice problem set](#formative-problem-set) | Friday, 1 November 2024, 5pm |
| 3 | [Summative mid-term problem set](#mid-term-problem-set) | Friday, 22 November 2024, 5pm |
| 4 | [Summative final take-home assessment](#final-take-home-assessment) | Wednesday, 15 January 2025, 5pm |

## Outline of topics

**Important note:** _There may be some small changes to and/or reorganisation of the course topics during the first weeks of the course._

| Week |  Topic |  Lecturer  |
|:--:|:-------|:------|
| 1  | [Introduction](#1-introduction) |  Ryan Hübert | 
| 2  | [Tabular data](#2-tabular-data) |  Ryan Hübert |  
| 3  | [Data visualisation](#3-data-visualisation) |  Ryan Hübert | 
| 4  | [Textual data](#4-textual-data) |  Ryan Hübert |  
| 5  | [HTML, CSS, and scraping static pages](#5-html-css-and-scraping-static-pages) |  Ryan Hübert |
| 6  | _Reading week_ |  
| 7  | [XML, RSS, and scraping non-static pages](#7-xml-rss-and-scraping-non-static-pages) |  Ryan Hübert |   
| 8  | [Working with APIs](#8-working-with-apis) |  Ryan Hübert |  
| 9  | [Other data types](#9-other-data-types) |  Ryan Hübert |  
| 10 | [Creating and managing databases](#10-creating-and-managing-databases) |  Ryan Hübert |  
| 11 | [Interacting with online databases](#11-nosql-and-cloud-databases)|  Ryan Hübert |  


## Detailed course schedule

**Important note:** _Links to slides and code scripts will be updated/added in advance of each week's teaching. There may also be minor adjustments/updates to the weekly readings posted below, so please monitor regularly._

### 1. Introduction

In the first week, we will introduce some basic concepts of how data is recorded and stored, and we will also review R fundamentals. Because the course relies fundamentally on GitHub, a collaborative code and data sharing platform, we will also discuss the use of git and GitHub.

#### Lecture

- [Lecture](week01/MY472-week01-intro.pdf)
- Code: [A plain R script](week01/00-standard-script.R), [a first R markdown example](week01/01-rmarkdown.Rmd), and a recap on [vectors, lists, data frames](week01/02-vectors-lists-dfs.Rmd)
- [Seminar](week01/MY472-week01-seminar.pdf)

#### Seminar

* Review of Git/GitHub basics discussed in lecture
* Branches, merges, and pull requests

<!-- ### Guide on GitHub, collaboration and pull requests -->

<!-- [YouTube video by Dr Tom Robinson and Dr Dan de Kadt](https://youtu.be/EDe3bQXxX4g?si=vUsD4WJv5pS4Fx3o) -->

#### Readings
* Wickham, Hadley.  Nd.  _Advanced R_, 2nd ed.  Ch 3, [Names and values](https://adv-r.hadley.nz/names-values.html), Chapter 4, [Vectors](https://adv-r.hadley.nz/vectors-chap.html), and Chapter 5, [Subsetting](https://adv-r.hadley.nz/subsetting.html). (Ch. 2-3 of the print edition),
* [GitHub Docs](https://docs.github.com/), especially: "[About GitHub and Git](https://docs.github.com/en/get-started/start-your-journey/about-github-and-git)", "[Hello World](https://docs.github.com/en/get-started/start-your-journey/hello-world)", and "[GitHub flow](https://docs.github.com/en/get-started/using-github/github-flow)".
* GitHub.  "[Basic formatting syntax](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)" (a markdown cheatsheet).
* Markdown Guide. "[Markdown Cheat Sheet](https://www.markdownguide.org/cheat-sheet/)."

#### Additional readings
* Lake, P. and Crowther, P. 2013. _Concise guide to databases: A Practical Introduction_.  London: Springer-Verlag.  Chapter 1, [Data, an Organizational Asset](https://books.google.co.uk/books?id=SuK2BAAAQBAJ&pg=PA301&lpg=PA301&dq=Concise+Guide+to+Databases+pdf&source=bl&ots=pEJj8miMrf&sig=3nrRgpk3kF7fXzcWUWpJ_uzpfl0&hl=en&sa=X&ved=0ahUKEwiAkM3JrbHWAhXE7xQKHWseCZAQ6AEISzAH#v=onepage&q=Concise%20Guide%20to%20Databases%20pdf&f=false)
* Nelson, Meghan.  2015.  "[An Intro to Git and GitHub for Beginners (Tutorial).](http://product.hubspot.com/blog/git-and-github-tutorial-for-beginners)"
* Jim McGlone, "[Creating and Hosting a Personal Site on GitHub
A step-by-step beginner's guide to creating a personal website and blog using Jekyll and hosting it for free using GitHub Pages.](http://jmcglone.com/guides/github-pages/)". (See also <https://docs.github.com/en/pages/quickstart>.)

### 2. Tabular data

This week discusses processing tabular data in R with functions from the `tidyverse` after some further review of R fundamentals.

#### Lecture

- [Slides](week02/MY472-week02-tabular.pdf)
- Code: [Conditionals, loops, and functions](week02/01-conditionals-loops-functions.Rmd), [data processing in R](week02/02-processing-data.Rmd), [industrial production dataset](week02/ip.csv), and [industrial production and unemployment dataset](week02/ip_and_unemployment.csv)

#### Seminar

- Code: [Dplyr exercises](week02/03-exercises-tabular-data.Rmd), [solution](week02/03-exercises-tabular-data-solution.Rmd)


#### Readings
* Wickham, Hadley and Garett Grolemund.  2017.  _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data_.  Sebastopol, CA: O'Reilly.  [Part II Wrangle](http://r4ds.had.co.nz/wrangle-intro.html), [Tibbles](http://r4ds.had.co.nz/tibbles.html), [Data Import](http://r4ds.had.co.nz/data-import.html), [Tidy Data](http://r4ds.had.co.nz/tidy-data.html) (Ch. 7-9 of the print edition).
* The [Tidyverse collection of packages](https://www.tidyverse.org/) for R.

*Note: there is a newer version of the Wickham and Grolemund text from 2023, which is available at <https://r4ds.hadley.nz/>.*

### 3. Data visualisation

The lecture this week will offer an overview of the principles of exploratory data analysis through summarising data and (good) data visualisation. In the coding session and seminars, we will practice producing our own graphs using ggplot2.


#### Lecture

- [Slides](week03/MY472-week03-visualisation.pdf)
- Lecture code: [Anscombe quartet](week03/01-anscombe.Rmd), [ggplot2 walkthrough](week03/02-ggplot-walkthrough.Rmd)
- Data: [Congressional Facebook posts](week03/data/fb-congress-data.csv), [unemployment data](week03/data/unemployment.csv)
- Further reference code: [ggplot2 basics](week03/03a-ggplot2-basics.Rmd), [ggplot2 scales, axes, and legends](week03/03b-scales-axes-legends.Rmd)


#### Seminar

- Code: [Exercises in visualistion](week03/04-exercises-visualisation.Rmd), [solution](week03/04-exercises-visualisation-solution.Rmd)
- Graphic to replicate: [Unemployment rates](week03/04-unemployment.png)

#### Reading

* Wickham, Hadley and Garett Grolemund.  2017.  _R for Data Science: Import, Tidy, Transform, Visualize, and Model Data_.  Sebastopol, CA: O'Reilly.  [Data visualization](https://r4ds.had.co.nz/data-visualisation.html), [Graphics for communication](https://r4ds.had.co.nz/graphics-for-communication.html) (Ch. 1 and 22 of the print edition).


#### Further reading

* Healy, Kieran. 2019. _Data Visualization: A Practical Introduction._ Princeton, NJ: Princeton University Press, ch. 1. Book available at <https://socviz.co/>.
* Hughes, A. (2015) ["Visualizing inequality: How graphical emphasis
shapes public opinion"](https://journals.sagepub.com/doi/abs/10.1177/2053168015622073) Research and Politics.	
* Tufte, E. (2002) ["The visual display of quantitative information"](https://www.edwardtufte.com/tufte/books_vdqi).
* Wilkinson, Leland and Graham Wills. 2005. _The Grammar of Graphics_. 2nd ed. New York: Springer, 2005. Ch. 1. [E-book available at LSE Library](https://librarysearch.lse.ac.uk/permalink/44LSE_INST/1f110cn/alma99128824410302021).



### Formative problem set

This is a *formative* assessment, and is due **1 November 2024 by 5pm**. You must submit your response as a knitted .html file via the Moodle page. 

Feedback on the Practice Problem Set will be returned by 15th November (if submitted by the deadline).

_More details to be made available later in the term._

### 4. Textual data

We will learn how to work with unstructured data in the form of text and discuss character encoding, search and replace with regular expressions, and elementary quantitative textual analysis.

#### Lecture

- [Slides](week04/MY472-week04-text.pdf)
- Code: [Encoding and regex](week04/01-encoding-regex.Rmd), [text analysis](week04/02-text-analysis.Rmd), [parsing pdfs](week04/03-parsing-pdfs.Rmd)
- Data: 
	- [Keynes' "General Theory" cover](week04/data/general_theory_cover.pdf)
	- [Methodology about us (UTF-8)](week04/data/methodology-8.txt)
	- [Methodology about us (UTF-16)](week04/data/methodology-16.txt)
	- [Methodology about us (UTF-32)](week04/data/methodology-32.txt)
	- [UTF example (8-bit)](week04/data/utf-examples-8.txt)
	- [UTF example (16-bit)](week04/data/utf-examples-16.txt)
	- [UTF example (32-bit)](week04/data/utf-examples-32.txt)
	- [Shanghai](week04/data/shanghai.txt)

#### Seminar

- Code: [Exercises in text analysis](week04/04-exercises-text-analysis.Rmd), [solution](week04/04-exercises-text-analysis-solution.Rmd)
- Data: [news article](week04/data/news-article-1.txt), [UoL institutions](week04/data/uol.txt) 


#### Reading
* Kenneth Benoit. July 16, 2019. "[Text as Data: An Overview](https://kenbenoit.net/pdfs/28%20Benoit%20Text%20as%20Data%20draft%202.pdf)" Forthcoming in Cuirini, Luigi and Robert Franzese, eds. Handbook of Research Methods in Political Science and International Relations. Thousand Oaks: Sage.


#### Further reading
- Wickham, Hadley and Garett Grolemund.  2017, [Chapter 14](http://r4ds.had.co.nz/strings.html)
- [Regular expressions cheat sheet](https://github.com/rstudio/cheatsheets/blob/main/regex.pdf)
- [Regular expressions in R vignette](https://cran.r-project.org/web/packages/stringr/vignettes/regular-expressions.html)


### 5. HTML, CSS, and scraping static pages

This week we cover the basics of web scraping for tables and unstructured data from static pages. We will also discuss the client-server model.

#### Lecture

- [Slides](week05/MY472-week05-scraping-1.pdf)
- Examples: [Website example 1](week05/data/html1.html), [Website example 2](week05/data/html2.html), [Website example 3](week05/data/html3.html), [Website example 4](week05/data/css1.html), [Website example 5](week05/data/css2.html)
- Code: , [selecting elements](week05/01-selecting-elements.Rmd), [scraping tables](week05/02-scraping-tables.Rmd)


#### Seminar

- Code: [Scraping unstructured data](week05/03-exercises-scraping-unstructured-data.Rmd), [solution](week05/03-exercises-scraping-unstructured-data-solution.Rmd)


#### Reading
* Lazer, David, and Jason Radford. 2017. “[Data Ex Machina: Introduction to Big Data.](https://doi.org/10.1146/annurev-soc-060116-053457)” _Annual Review of Sociology_ 43(1): 19–39.
* Howe, Shay. 2015.  [_Learn to Code HTML and CSS: Develop and Style Websites_](http://learn.shayhowe.com/html-css/).  New Riders.  Chs 1-8.
* Kingl, Arvid. 2018. [_Web Scraping in R: rvest Tutorial_](https://www.datacamp.com/community/tutorials/r-web-scraping-rvest).

#### Further reading
* Munzert, Simon, Christian Rubba, Peter Meissner, and Dominic Nyhuis D. 2014. _Automated Data Collection with R: A Practical Guide to Web Scraping and Text Mining_. Hoboken, NJ/Chichester, UK:Wiley & Sons. Ch. 2-4, 9.
* Severance, Charles Russell. 2015. [_Introduction to Networking: How the Internet Works_](http://www.net-intro.com).  Charles Severance, 2015.
* Duckett, Jon. 2011. _HTML and CSS: Design and Build Websites_.  New York: Wiley.

### 6. Reading week

### Mid-term problem set

This is a *summative* assessment worth 50% of your final mark. It is due **22 November 2024 by 5pm**. You must submit your response as a knitted .html file via the Moodle page. 

Feedback on the Mid-term problem set will be returned as per the ASDS/SRM handbook.

_More details to be made available later in the term._

### 7. XML, RSS, and scraping non-static pages

Continuing from the material covered in Week 5, we will learn the advanced topics in scraping the web. The topics include the scraping documents in XML (such as RSS), and scraping websites with non-static components with Selenium.

#### Lecture

- [Slides](week07/MY472-week07-scraping-2.pdf)
- Code: [Scraping RSS](week07/01-newspaper-rss.Rmd), [introduction to RSelenium](week07/02-introduction-to-selenium.Rmd), [RSelenium example with the LSE website](week07/03-selenium-lse.Rmd)

#### Seminar

- Code: [Scraping UK election data](x), [solution](x)


#### Reading
* [_XML_](https://www.w3schools.com/xml/xml_whatis.asp)
* [_RSS_](https://www.w3schools.com/xml/xml_rss.asp)
* [_XPath syntax_](https://www.w3schools.com/xml/xpath_syntax.asp)
* [_RSelenium vignette_](https://cran.r-project.org/web/packages/RSelenium/vignettes/basics.html)


#### Further reading
* Mozilla Developer Web Docs. [_What is JavaScript_](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/What_is_JavaScript).
* [_Web Scraping with R and PhantomJS_](https://www.datacamp.com/community/tutorials/scraping-javascript-generated-data-with-r).
* Mozilla Developer Web Docs. [_A First Splash into JavaScript_](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/A_first_splash).


### 8. Working with APIs

This week discusses how to work with Application Programming Interfaces (APIs) that offer developers and researchers access to data in a structured format. 

#### Lecture

- [Slides](x)
- Code: [JSON in R](x), [AIC API](x)


#### Seminar

- Code: [NY Times API](x), [NY Times API solution](x)


#### Reading
* Barberá & Steinert-Threlkeld. 2018. ["How to use social media data for political science research"](http://pablobarbera.com/static/social-media-data-generators.pdf). In _The Sage handbook of research methods in political science and international relations_, pages 404-423.

#### Further reading
* Ruths and Pfeffer. 2014. [_Social media for large studies of behavior_](http://science.sciencemag.org/content/346/6213/1063.full). Science.


### 9. Other data types

We will learn how to work with other data types, such as spatial data. Time permitting, we will also briefly discuss compute constraints and parallelization.

#### Lecture

- [Slides](x)

#### Seminar

- Code: to be posted

#### Reading
* To be posted

#### Further reading
* To be posted

### 10. Creating and managing databases

This session will offer an introduction to relational databases: structure, logic, and main types. We will learn how to write SQL code, a language designed to query this type of databases that is currently employed by many companies; and how to use it from R using the DBI package.

#### Lecture

- [Slides](x)
- Code: [SQL introduction](x), [join and aggregation in SQL](x)


#### Seminar

- Code: [SQL exercises](x), [solution](x)

#### Reading
* Beaulieu. 2009. [_Learning SQL_](https://books.google.co.uk/books?hl=en&lr=&id=1PgCCVryjOQC&oi=fnd&pg=PR3&dq=learning+sql+alan&ots=X6M3Iaz1wO&sig=38Fp1kDlxM8TF7miw0K2CNcKib4#v=onepage&q=learning%20sql%20alan&f=false). O'Reilly. (Chapters 1, 3, 4, 5, 8)

#### Further reading
* Stephens et al. 2009. [_Teach yourself SQL in one hour a day_](https://books.google.co.uk/books?hl=en&lr=&id=9fDZ_rVoxx0C&oi=fnd&pg=PR5&dq=%22Sams+Teach+Yourself+SQL+in+24+Hours%22&ots=UkaClJDMem&sig=wgLy-DG3bc7g0LO0_Ojy5Cy2Ejs#v=onepage&q=%22Sams%20Teach%20Yourself%20SQL%20in%2024%20Hours%22&f=false). Sam's Publishing.


### 11. NoSQL and cloud databases

This week covers how to set up and use relational databases in the cloud and fundamentals of a document based NoSQL database.

#### Lecture

- [Slides](x)
- Code: [Creating own databases in the cloud](x), [querying large cloud databases](x), [MongoDB](x)

#### Seminar

- Code: [Exercises BigQuery](x), [SQL joins](x), [SQL subqueries](x), [solution BigQuery](x), [solution joins](x), [solution subqueries](x)

#### Required
* Beaulieu. 2009. [_Learning SQL_](https://books.google.co.uk/books?hl=en&lr=&id=1PgCCVryjOQC&oi=fnd&pg=PR3&dq=learning+sql+alan&ots=X6M3Iaz1wO&sig=38Fp1kDlxM8TF7miw0K2CNcKib4#v=onepage&q=learning%20sql%20alan&f=false). O'Reilly. (Chapters 2)
* Hows, Membrey, and Plugge. 2014. [_MongoDB Basics_](https://books.google.co.uk/books?id=kmQnCgAAQBAJ&printsec=frontcover&dq=mongodb+basics&hl=en&sa=X&ved=0ahUKEwjPt7Cnv-PeAhUHBcAKHWQeBe0Q6wEIKzAA#v=onepage&q&f=false). Apress. (Chapter 1)
* Tigani and Naidu. 2017. [_Google BigQuery Analytics_](https://books.google.co.uk/books?id=LDaiAwAAQBAJ&printsec=frontcover&dq=bigquery&hl=en&sa=X&ved=0ahUKEwj6yZ-MvOPeAhXHCcAKHWJxBSEQ6AEIMzAB#v=onepage&q&f=false). Weily. (Chapters 1-3)


#### Further reading
* [Analyzing Big Data in less time with Google BigQuery](https://www.youtube.com/watch?v=qqbYrQGSibQ) on YouTube


### Final take-home assessment

This is a *summative* assessment worth 50% of your final mark. It is due **Wednesday, 15 January 2025 by 5pm**. 

_More details to be made available later in the term._