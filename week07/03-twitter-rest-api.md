Scraping data from Twitter’s REST API
================
November 14, 2019

We’ll now turn to a different type of Twitter data – static data, either
recent tweets or user-level information. This type of data can be
retrieved with Twitter’s REST API. We will use the `tweetscores` package
here – this is a package that Pablo Barbera created to facilitate the
collection and analysis of Twitter data.

### Searching recent tweets

It is possible to download recent Tweets, but only up those less than 7
days old, and in some cases not all of them.

``` r
load("my_oauth.rda")
library("tweetscores")
```

    ## Loading required package: R2WinBUGS

    ## Loading required package: coda

    ## Loading required package: boot

    ## ##
    ## ## tweetscores: tools for the analysis of Twitter data

    ## ## Pablo Barbera (USC)

    ## ## www.tweetscores.com
    ## ##

``` r
library("streamR")
```

    ## Loading required package: RCurl

    ## Loading required package: bitops

    ## Loading required package: rjson

    ## Loading required package: ndjson

``` r
searchTweets(q = c("brexit", "election"), 
  filename = "recent-brexit-tweets.json",
  n = 1000, until = "2019-11-14", 
  oauth = my_oauth)
```

    ## 100 tweets. Max id: 1194766890603823104

    ## 148 hits left

    ## 200 tweets. Max id: 1194766726703058944

    ## 147 hits left

    ## 300 tweets. Max id: 1194766533576122368

    ## 146 hits left

    ## 400 tweets. Max id: 1194766322699247616

    ## 145 hits left

    ## 500 tweets. Max id: 1194766145691238400

    ## 144 hits left

    ## 600 tweets. Max id: 1194765962811248640

    ## 143 hits left

    ## 700 tweets. Max id: 1194765774298238976

    ## 142 hits left

    ## 800 tweets. Max id: 1194765608577056768

    ## 141 hits left

    ## 900 tweets. Max id: 1194765424212221952

    ## 140 hits left

    ## 1000 tweets. Max id: 1194765212454273024

``` r
tweets <- parseTweets("recent-brexit-tweets.json")
```

    ## 4000 tweets have been parsed.

What are the most popular hashtags?

``` r
library("stringr")
ht <- str_extract_all(tweets$text, '#[A-Za-z0-9_]+')
ht <- unlist(ht)
head(sort(table(ht), decreasing = TRUE))
```

    ## ht
    ##              #Brexit          #StopBrexit              #GE2019 
    ##                  416                  188                  124 
    ##            #FinalSay              #Labour #GeneralElection2019 
    ##                   68                   60                   56

You can check the documentation about the options for string search
[here](https://dev.twitter.com/rest/public/search).

### Extracting users’ profile information

This is how you would extract information from user profiles:

``` r
wh <- c("realDonaldTrump", "POTUS", "VP", "FLOTUS")
users <- getUsersBatch(screen_names = wh, oauth = my_oauth)
```

    ## 1--4 users left

``` r
str(users)
```

    ## 'data.frame':    4 obs. of  9 variables:
    ##  $ id_str         : chr  "818910970567344128" "822215679726100480" "25073877" "818876014390603776"
    ##  $ screen_name    : chr  "VP" "POTUS" "realDonaldTrump" "FLOTUS"
    ##  $ name           : chr  "Vice President Mike Pence" "President Trump" "Donald J. Trump" "Melania Trump"
    ##  $ description    : chr  "Vice President Mike Pence. Husband, father, & honored to serve as the 48th Vice President of the United States."| __truncated__ "45th President of the United States of America, @realDonaldTrump. Tweets archived: https://t.co/eVVzoBb3Zr" "45th President of the United States of America\U0001f1fa\U0001f1f8" "This account is run by the Office of First Lady Melania Trump. Tweets may be archived. More at https://t.co/eVVzoBb3Zr"
    ##  $ followers_count: int  8075387 27092966 66779231 12606665
    ##  $ statuses_count : int  7822 7741 46099 737
    ##  $ friends_count  : int  13 39 47 7
    ##  $ created_at     : chr  "Tue Jan 10 20:02:44 +0000 2017" "Thu Jan 19 22:54:28 +0000 2017" "Wed Mar 18 13:46:38 +0000 2009" "Tue Jan 10 17:43:50 +0000 2017"
    ##  $ location       : chr  "Washington, D.C." "Washington, D.C." "Washington, DC" "Washington, D.C."

Which of these has the most followers?

``` r
users[which.max(users$followers_count), ]
```

    ##     id_str     screen_name            name
    ## 3 25073877 realDonaldTrump Donald J. Trump
    ##                                                          description
    ## 3 45th President of the United States of America\U0001f1fa\U0001f1f8
    ##   followers_count statuses_count friends_count
    ## 3        66779231          46099            47
    ##                       created_at       location
    ## 3 Wed Mar 18 13:46:38 +0000 2009 Washington, DC

``` r
users$screen_name[which.max(users$followers_count)]
```

    ## [1] "realDonaldTrump"

### Downloading recent tweets from a specific user

Download up to 3,200 recent tweets from a Twitter
account:

``` r
# getTimeline(filename = "realDonaldTrump.json", screen_name = "realDonaldTrump", 
#             n = 1000, oauth = my_oauth)
```

What are the most common hashtags?

``` r
tweets <- parseTweets("realDonaldTrump.json")
```

    ## 1796 tweets have been parsed.

``` r
ht <- str_extract_all(tweets$text, "#[A-Za-z0-9_]+")
ht <- unlist(ht)
head(sort(table(ht), decreasing = TRUE))
```

    ## ht
    ##        #MAGA      #MyTake    #VarneyCo #impeachment     #KAG2020 
    ##           25           23           23           18           16 
    ##       #USMCA 
    ##           13

### Other types of data

The REST API offers also a long list of other endpoints that could be of
use at some point, depending on your research interests. Here I’m
showing you another two that could be useful, but you can read the
documentation of the package for more examples

1)  If you know the ID of the tweets, you can download it directly from
    the API. This is useful because tweets cannot be redistributed as
    part of the replication materials of a published paper, but the list
    of tweet IDs can be shared:

<!-- end list -->

``` r
# Downloading tweets when you know the ID
getStatuses(ids = c("1192779653947252736"),
            filename = "old-tweets.json",
            oauth = my_oauth)
parseTweets("old-tweets.json")
```

2)  Lists of Twitter users, compiled by other users, are also accessible
    through the API.

<!-- end list -->

``` r
# download user information from a list
MCs <- getList(list_name = "new-members-of-congress", 
               screen_name = "cspan", oauth = my_oauth)
```

    ## 894 API calls left

    ## 20 users in list. Next cursor: 5504177645515399168

    ## 893 API calls left

    ## 40 users in list. Next cursor: 5361732962332446720

    ## 892 API calls left

    ## 60 users in list. Next cursor: 4611686019261061818

    ## 891 API calls left

    ## 80 users in list. Next cursor: 4611686018645680191

    ## 890 API calls left

    ## 100 users in list. Next cursor: 4611686018453445113

    ## 889 API calls left

    ## 109 users in list. Next cursor: 0

    ## 888 API calls left

``` r
head(MCs)
```

    ##             id              id_str            name    screen_name
    ## 1 1.029094e+18 1029094268542099457    Lance Gooden    Lancegooden
    ## 2 9.917210e+17  991721030631780354    Jahana Hayes  JahanaHayesCT
    ## 3 9.864236e+17  986423555025002497     Bryan Steil     BryanSteil
    ## 4 9.772474e+17  977247448820305920     Joe Morelle    votemorelle
    ## 5 9.693281e+17  969328139485802496      John Joyce JohnJoyceForPA
    ## 6 9.649970e+17  964996994623311874 Kelly Armstrong   Armstrong_ND
    ##            location
    ## 1       Terrell, TX
    ## 2     Waterbury, CT
    ## 3                  
    ## 4   Irondequoit, NY
    ## 5 Pennsylvania, USA
    ## 6                  
    ##                                                                                                                                                       description
    ## 1                                                                                      Husband, Father, and U.S. Congressman for TX's 5th Congressional District.
    ## 2                                                                                                                     CT 5th Congressional District Congresswoman
    ## 3                                                                                         Problem Solver. Badger. Manufacturing. Running for Congress. #TeamSteil
    ## 4 #NY25 Democratic candidate. Husband, father, believer in the promise of a future that is as strong, resilient & bold as the people who call Monroe County home.
    ## 5                  Father, husband, granddad, doctor, advocate, PSU alum. Congressman representing #PA13. Fighting every day for central Pennsylvania. #TeamJoyce
    ## 6                                      Lifelong North Dakotan. Proud husband and dad. Republican. U.S. House of Representatives. Real Conservative. Real results.
    ##                       url followers_count friends_count
    ## 1 https://t.co/se9SXZNb3A            1853           695
    ## 2 https://t.co/M3SQ8jj5UE           27402           166
    ## 3 https://t.co/YCyHtH7BJc            1779           110
    ## 4 https://t.co/rK3kkPMWMY            1256           218
    ## 5 https://t.co/jMnrGGJVsx             823           172
    ## 6 https://t.co/olKerxuUWz            1821           577
    ##                       created_at time_zone lang
    ## 1 Mon Aug 13 19:56:08 +0000 2018        NA   NA
    ## 2 Wed May 02 16:48:13 +0000 2018        NA   NA
    ## 3 Wed Apr 18 01:57:57 +0000 2018        NA   NA
    ## 4 Fri Mar 23 18:15:22 +0000 2018        NA   NA
    ## 5 Thu Mar 01 21:46:52 +0000 2018        NA   NA
    ## 6 Sat Feb 17 22:56:27 +0000 2018        NA   NA

This is also useful if e.g. you’re interested in compiling lists of
journalists, because media outlets offer these lists in their profiles.
