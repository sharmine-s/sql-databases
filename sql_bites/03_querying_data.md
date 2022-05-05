# Querying data

_**This is a Makers Bite.** Bites are designed to train specific skills or
tools. They contain an intro, a demonstration video, some exercises with an
example solution video, and a challenge without a solution video for you to test
your learning. [Read more about how to use Makers
Bites.](https://github.com/makersacademy/course/blob/main/labels/bites.md)_

Learn to write `SELECT` SQL queries to select and filter records from a table.

## Introduction

The `SELECT` SQL query is used to retrieve records from a table.

Here's the general syntax of a `SELECT` query:

```
SELECT [columns to select] FROM [table name];
```

The result of running a `SELECT` query on the database is called a **result set**, and is also in the shape of a table. The columns will be the ones you asked for, and the rows all the matching records.

### Selecting columns of the result set

Here's a simple `SELECT` query that we can run on the music library database. It selects records from the table `albums`, keeping in the result set only values for the columns `id` and `title`. 

```sql
SELECT id, title FROM albums;
```

In English, you could read this as "From the table `albums`, select values for `id` and `title`".

Run this query and you should get the following **result set**.

```
 id |        title         
----+----------------------
  1 | Doolittle
  2 | Surfer Rosa
  3 | Waterloo
  4 | Super Trouper
  5 | Bossanova
  6 | Lover
  7 | Folklore
  8 | I Put a Spell on You
  9 | Baltimore
```

(You can use the up and down arrow keys to scroll this result set in your terminal, and use `q` to exit and go back to the REPL).

## Exercise One

Use a `SELECT` statement to list only the `release_year`s from the `albums` table. You should get a similar result set:

```
 release_year 
--------------
         1989
         1988
         1974
         1980
         1990
         2019
         2020
         1965
         1978
```

## Filtering

So far you've been querying all records from the table, without specifying which ones. We can filter records by adding conditions to the query, with the `WHERE` keyword. Here's the general syntax:

```
SELECT [columns to select] FROM [table name] WHERE [conditions];
```

And here are some examples. They also contain some SQL comments (a commented line is started with `--`).

```sql
-- From albums,
-- filter where id is '2',
-- and select only values for the columns id and title.
SELECT id, title, release_year
  FROM albums
  WHERE id = 2;

-- From albums,
-- filter where release_year is greater than 1990,
-- and select only values for the columns id, title and release_year.
SELECT id, title, release_year
  FROM albums
  WHERE release_year > 1990;

-- From albums,
-- filter where release_year is greater than 1990 AND artist_is is '1',
-- and select only values for the columns id, title and release_year.
SELECT id, title, release_year
  FROM albums
  WHERE release_year > 1989 AND artist_id = 1;
```

*You'll note that we can write a SQL query over more than one line, to improve readability, since we always end a query with `;`*

## Primary and foreign keys

You've probably noticed the two columns having `id` in their name, and storing only numeric values. These columns are called "keys", and they come in two different types:
  * The first column `id` is the **primary key**. Every table will (usually) have a primary key, and it is by convention always called `id`. Values for this column are used to uniquely identify each record, a bit like a social security number. You usually won't choose the value yourself, as databases can automatically assign a new value for this column, ensuring it's unique.
  * The other column `artist_id` is called a **foreign key**. It is used to indicate which artist record (in the `artists` table) is associated with an album record. For example, in the last query from the example above, we've selected all albums having the value `1` for `artist_id`. This value `1` needs to be a valid **primary keys** in the `artists` table.

```
  albums                                                    artists

 id |        title         | artist_id |                  | id |     name     
----+----------------------+-----------+                  |----+--------------
  1 | Doolittle            |         1 | ---------------> |  1 | Pixies
  2 | Surfer Rosa          |         1 |                  
  3 | Waterloo             |         2 | ---------------> |  2 | ABBA
  4 | Super Trouper        |         2 |                  
  5 | Bossanova            |         1 |                                
```

## Exercise Two

Use a filtered `SELECT` statement to list only the `release_year` of the album with title `'Bossanova'`.

You should get the following result set:

```
 release_year 
--------------
         1990
(1 row)
```

## Exercise Three

Use a filtered `SELECT` statement to list only the `title` of the albums from Nina Simone (you'll need to find the right primary key value for this artist).

You should get the following result set:

```
 title         
----------------------
 I Put a Spell on You
 Baltimore
 Here Comes the Sun
 Fodder on My Wings
```

## Challenge

Find all titles of the albums released between 1980 and 1990 (inclusive).

You should get the following result set:

```
       title        
--------------------
 Doolittle
 Surfer Rosa
 Super Trouper
 Bossanova
 Fodder on My Wings
```

[Next Challenge](04_updating_and_deleting_date.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=sql_bites/03_querying_data.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=sql_bites/03_querying_data.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=sql_bites/03_querying_data.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=sql_bites/03_querying_data.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=sql_bites/03_querying_data.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
