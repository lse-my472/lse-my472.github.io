Scraping data from Twitter’s REST API
================
November 19, 2019

We’ll now turn to a different type of Twitter data – static data, either
recent tweets or user-level information. This type of data can be
retrieved with Twitter’s REST API. We will use the `tweetscores` package
here – this is a package that Pablo Barbera created to facilitate the
collection and analysis of Twitter data.

### Searching recent Tweets

It is possible to download recent Tweets, but only up those less than 7
days old, and in some cases not all of them.

The following code will authorize your token and get the last 1,000
Tweets mentioning “brexit” and “election”, using the **rtweets**
package.

``` r
library("rtweet")

load("my_oauth.rda")
twitter_token <- create_token(app = "Ken's R access", 
                              consumer_key = my_oauth$consumer_key,
                              consumer_secret = my_oauth$consumer_secret,
                              access_token = my_oauth$access_token,
                              access_secret = my_oauth$access_token_secret)

tweets <- search_tweets("brexit AND election", n = 1000)
head(tweets)
```

    ## # A tibble: 6 x 90
    ##   user_id status_id created_at          screen_name text  source display_text_wi…
    ##   <chr>   <chr>     <dttm>              <chr>       <chr> <chr>             <dbl>
    ## 1 252062… 11968030… 2019-11-19 14:51:03 John_Perry… @Bor… Twitt…              264
    ## 2 252062… 11968021… 2019-11-19 14:47:16 John_Perry… The … Twitt…              147
    ## 3 113837… 11968030… 2019-11-19 14:51:02 SheronC015… "“I'… Twitt…              140
    ## 4 449579… 11968030… 2019-11-19 14:51:01 donanderso… Brex… Twitt…              128
    ## 5 237991… 11968030… 2019-11-19 14:50:59 BRyvkin     "Why… Twitt…              140
    ## 6 986712… 11968029… 2019-11-19 14:50:45 ZurichBank… @ant… Twitt…              235
    ## # … with 83 more variables: reply_to_status_id <chr>, reply_to_user_id <chr>,
    ## #   reply_to_screen_name <chr>, is_quote <lgl>, is_retweet <lgl>, favorite_count <int>,
    ## #   retweet_count <int>, quote_count <int>, reply_count <int>, hashtags <list>,
    ## #   symbols <list>, urls_url <list>, urls_t.co <list>, urls_expanded_url <list>,
    ## #   media_url <list>, media_t.co <list>, media_expanded_url <list>, media_type <list>,
    ## #   ext_media_url <list>, ext_media_t.co <list>, ext_media_expanded_url <list>,
    ## #   ext_media_type <chr>, mentions_user_id <list>, mentions_screen_name <list>,
    ## #   lang <chr>, quoted_status_id <chr>, quoted_text <chr>, quoted_created_at <dttm>,
    ## #   quoted_source <chr>, quoted_favorite_count <int>, quoted_retweet_count <int>,
    ## #   quoted_user_id <chr>, quoted_screen_name <chr>, quoted_name <chr>,
    ## #   quoted_followers_count <int>, quoted_friends_count <int>,
    ## #   quoted_statuses_count <int>, quoted_location <chr>, quoted_description <chr>,
    ## #   quoted_verified <lgl>, retweet_status_id <chr>, retweet_text <chr>,
    ## #   retweet_created_at <dttm>, retweet_source <chr>, retweet_favorite_count <int>,
    ## #   retweet_retweet_count <int>, retweet_user_id <chr>, retweet_screen_name <chr>,
    ## #   retweet_name <chr>, retweet_followers_count <int>, retweet_friends_count <int>,
    ## #   retweet_statuses_count <int>, retweet_location <chr>, retweet_description <chr>,
    ## #   retweet_verified <lgl>, place_url <chr>, place_name <chr>, place_full_name <chr>,
    ## #   place_type <chr>, country <chr>, country_code <chr>, geo_coords <list>,
    ## #   coords_coords <list>, bbox_coords <list>, status_url <chr>, name <chr>,
    ## #   location <chr>, description <chr>, url <chr>, protected <lgl>, followers_count <int>,
    ## #   friends_count <int>, listed_count <int>, statuses_count <int>,
    ## #   favourites_count <int>, account_created_at <dttm>, verified <lgl>, profile_url <chr>,
    ## #   profile_expanded_url <chr>, account_lang <lgl>, profile_banner_url <chr>,
    ## #   profile_background_url <chr>, profile_image_url <chr>

What are the most popular hashtags?

``` r
library("stringr")
ht <- str_extract_all(tweets$text, "#[A-Za-z0-9_]+")
ht <- unlist(ht)
head(sort(table(ht), decreasing = TRUE))
```

    ## ht
    ##    #GE2019    #Brexit    #ge2019   #r4today #ITVDebate       #NHS 
    ##         64         55         23         22         19         17

You can check the documentation about the options for string search
[here](https://dev.twitter.com/rest/public/search).

### Extracting users’ profile information

This is how you would extract information from user profiles:

``` r
users <- lookup_users(c("realDonaldTrump", "POTUS", "VP", "FLOTUS"))
users
```

    ## # A tibble: 4 x 90
    ##   user_id status_id created_at          screen_name text  source display_text_wi…
    ##   <chr>   <chr>     <dttm>              <chr>       <chr> <chr>             <int>
    ## 1 250738… 11967911… 2019-11-19 14:03:47 realDonald… NASD… Twitt…               NA
    ## 2 822215… 11967993… 2019-11-19 14:36:22 POTUS       NASD… TheWh…               NA
    ## 3 818910… 11967945… 2019-11-19 14:17:07 VP          NASD… Twitt…               NA
    ## 4 818876… 11947597… 2019-11-13 23:31:40 FLOTUS      Grea… Twitt…               NA
    ## # … with 83 more variables: reply_to_status_id <lgl>, reply_to_user_id <lgl>,
    ## #   reply_to_screen_name <lgl>, is_quote <lgl>, is_retweet <lgl>, favorite_count <int>,
    ## #   retweet_count <int>, quote_count <int>, reply_count <int>, hashtags <list>,
    ## #   symbols <list>, urls_url <list>, urls_t.co <list>, urls_expanded_url <list>,
    ## #   media_url <list>, media_t.co <list>, media_expanded_url <list>, media_type <list>,
    ## #   ext_media_url <list>, ext_media_t.co <list>, ext_media_expanded_url <list>,
    ## #   ext_media_type <chr>, mentions_user_id <list>, mentions_screen_name <list>,
    ## #   lang <chr>, quoted_status_id <chr>, quoted_text <chr>, quoted_created_at <dttm>,
    ## #   quoted_source <chr>, quoted_favorite_count <int>, quoted_retweet_count <int>,
    ## #   quoted_user_id <chr>, quoted_screen_name <chr>, quoted_name <chr>,
    ## #   quoted_followers_count <int>, quoted_friends_count <int>,
    ## #   quoted_statuses_count <int>, quoted_location <chr>, quoted_description <chr>,
    ## #   quoted_verified <lgl>, retweet_status_id <chr>, retweet_text <chr>,
    ## #   retweet_created_at <dttm>, retweet_source <chr>, retweet_favorite_count <int>,
    ## #   retweet_retweet_count <int>, retweet_user_id <chr>, retweet_screen_name <chr>,
    ## #   retweet_name <chr>, retweet_followers_count <int>, retweet_friends_count <int>,
    ## #   retweet_statuses_count <int>, retweet_location <chr>, retweet_description <chr>,
    ## #   retweet_verified <lgl>, place_url <chr>, place_name <chr>, place_full_name <chr>,
    ## #   place_type <chr>, country <chr>, country_code <chr>, geo_coords <list>,
    ## #   coords_coords <list>, bbox_coords <list>, status_url <chr>, name <chr>,
    ## #   location <chr>, description <chr>, url <chr>, protected <lgl>, followers_count <int>,
    ## #   friends_count <int>, listed_count <int>, statuses_count <int>,
    ## #   favourites_count <int>, account_created_at <dttm>, verified <lgl>, profile_url <chr>,
    ## #   profile_expanded_url <chr>, account_lang <lgl>, profile_banner_url <chr>,
    ## #   profile_background_url <chr>, profile_image_url <chr>

Which of these has the most followers?

``` r
users[which.max(users$followers_count), ]
```

    ## # A tibble: 1 x 90
    ##   user_id status_id created_at          screen_name text  source display_text_wi…
    ##   <chr>   <chr>     <dttm>              <chr>       <chr> <chr>             <int>
    ## 1 250738… 11967911… 2019-11-19 14:03:47 realDonald… NASD… Twitt…               NA
    ## # … with 83 more variables: reply_to_status_id <lgl>, reply_to_user_id <lgl>,
    ## #   reply_to_screen_name <lgl>, is_quote <lgl>, is_retweet <lgl>, favorite_count <int>,
    ## #   retweet_count <int>, quote_count <int>, reply_count <int>, hashtags <list>,
    ## #   symbols <list>, urls_url <list>, urls_t.co <list>, urls_expanded_url <list>,
    ## #   media_url <list>, media_t.co <list>, media_expanded_url <list>, media_type <list>,
    ## #   ext_media_url <list>, ext_media_t.co <list>, ext_media_expanded_url <list>,
    ## #   ext_media_type <chr>, mentions_user_id <list>, mentions_screen_name <list>,
    ## #   lang <chr>, quoted_status_id <chr>, quoted_text <chr>, quoted_created_at <dttm>,
    ## #   quoted_source <chr>, quoted_favorite_count <int>, quoted_retweet_count <int>,
    ## #   quoted_user_id <chr>, quoted_screen_name <chr>, quoted_name <chr>,
    ## #   quoted_followers_count <int>, quoted_friends_count <int>,
    ## #   quoted_statuses_count <int>, quoted_location <chr>, quoted_description <chr>,
    ## #   quoted_verified <lgl>, retweet_status_id <chr>, retweet_text <chr>,
    ## #   retweet_created_at <dttm>, retweet_source <chr>, retweet_favorite_count <int>,
    ## #   retweet_retweet_count <int>, retweet_user_id <chr>, retweet_screen_name <chr>,
    ## #   retweet_name <chr>, retweet_followers_count <int>, retweet_friends_count <int>,
    ## #   retweet_statuses_count <int>, retweet_location <chr>, retweet_description <chr>,
    ## #   retweet_verified <lgl>, place_url <chr>, place_name <chr>, place_full_name <chr>,
    ## #   place_type <chr>, country <chr>, country_code <chr>, geo_coords <list>,
    ## #   coords_coords <list>, bbox_coords <list>, status_url <chr>, name <chr>,
    ## #   location <chr>, description <chr>, url <chr>, protected <lgl>, followers_count <int>,
    ## #   friends_count <int>, listed_count <int>, statuses_count <int>,
    ## #   favourites_count <int>, account_created_at <dttm>, verified <lgl>, profile_url <chr>,
    ## #   profile_expanded_url <chr>, account_lang <lgl>, profile_banner_url <chr>,
    ## #   profile_background_url <chr>, profile_image_url <chr>

``` r
users$screen_name[which.max(users$followers_count)]
```

    ## [1] "realDonaldTrump"

``` r
users[, c("screen_name", "followers_count")]
```

    ## # A tibble: 4 x 2
    ##   screen_name     followers_count
    ##   <chr>                     <int>
    ## 1 realDonaldTrump        66875155
    ## 2 POTUS                  27125782
    ## 3 VP                      8090928
    ## 4 FLOTUS                 12621020

### Downloading recent tweets from a specific user

Download recent tweets from a specific account:

``` r
tweets <- get_timeline("realDonaldTrump", n = 1000)
```

What are the most common hashtags?

``` r
ht <- str_extract_all(tweets$text, "#[A-Za-z0-9_]+")
ht <- unlist(ht)
head(sort(table(ht), decreasing = TRUE))
```

    ## integer(0)

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
tw <- lookup_tweets(1196148537525977088)
tw$text
```

    ## [1] ".@SteveScalise blew the nasty &amp; obnoxious Chris Wallace (will never be his father, Mike!) away on Chris’s lowest rated (unless I’m on) morning show. This kind of dumb and unfair interview would never have happened in the @FoxNews past. Great job Steve!"

2)  Lists of Twitter users, compiled by other users, are also accessible
    through the API.

<!-- end list -->

``` r
# download user information from a list
new_congress_members <- lists_members(slug = "new-members-of-congress", owner_user = "cspan")
head(new_congress_members)
```

    ## # A tibble: 6 x 42
    ##   user_id name  screen_name location description url   protected followers_count
    ##   <chr>   <chr> <chr>       <chr>    <chr>       <chr> <lgl>               <int>
    ## 1 102909… Lanc… Lancegooden Terrell… Husband, F… http… FALSE                1863
    ## 2 991721… Jaha… JahanaHaye… Waterbu… CT 5th Con… http… FALSE               27436
    ## 3 986423… Brya… BryanSteil  ""       Problem So… http… FALSE                1781
    ## 4 977247… Joe … votemorelle Irondeq… #NY25 Demo… http… FALSE                1261
    ## 5 969328… John… JohnJoyceF… Pennsyl… Father, hu… http… FALSE                 827
    ## 6 964996… Kell… Armstrong_… ""       Lifelong N… http… FALSE                1818
    ## # … with 34 more variables: friends_count <int>, listed_count <int>, created_at <dttm>,
    ## #   favourites_count <int>, utc_offset <lgl>, time_zone <lgl>, geo_enabled <lgl>,
    ## #   verified <lgl>, statuses_count <int>, lang <lgl>, contributors_enabled <lgl>,
    ## #   is_translator <lgl>, is_translation_enabled <lgl>, profile_background_color <chr>,
    ## #   profile_background_image_url <chr>, profile_background_image_url_https <chr>,
    ## #   profile_background_tile <lgl>, profile_image_url <chr>,
    ## #   profile_image_url_https <chr>, profile_banner_url <chr>, profile_link_color <chr>,
    ## #   profile_sidebar_border_color <chr>, profile_sidebar_fill_color <chr>,
    ## #   profile_text_color <chr>, profile_use_background_image <lgl>,
    ## #   has_extended_profile <lgl>, default_profile <lgl>, default_profile_image <lgl>,
    ## #   can_media_tag <lgl>, followed_by <lgl>, following <lgl>, follow_request_sent <lgl>,
    ## #   notifications <lgl>, translator_type <chr>

This is also useful if e.g. you’re interested in compiling lists of
journalists, because media outlets offer these lists in their profiles.
