# Setting up PostgreSQL

Learn to setup PostgreSQL.

## Introduction

Up until now, you've been storing your program's data in memory — as attributes, arrays, objects, etc. If we exit the program, all the data is lost, which is not great if we need to store data for the long term (think bank accounts, user accounts, order history...).

This week, you'll learn how to use a database to store data used by programs.

There are many types of databases, but this week you'll learn how to use **PostgreSQL**, which is a **relational database**. PostgreSQL is free and open-source, and is also widely used in a lot of large-scale, professional applications, which makes it the perfect choice for a first database to learn with.

## About relational databases

A **relational database** stores data in **tables**. For example, if our application needs to store **students** information, we'd have a table named "students".

A table has **columns** for the attributes of the "things" it records, which are fixed and the same for each record (unless we're changing the schema of this table later). Each record is a **row** in the table.

For example, a table "students" could have columns "name" and "cohort_name".

Here's an example of how such a table would look like:

```
Table: students

 id |     name     | cohort_name
----+--------------+------------
  1 | Sarah        | April 2022
  2 | Georgia      | April 2022
  3 | David        | May 2022
  4 | Ali          | April 2022
```

*(By convention, table names and column names are **always lowercase**, using underscores to separate words). Table names are always plural*

You will first learn how to query records from such a table, and then create, update and delete records.

## Setup

First, you will need to install PostgreSQL on your machine. You can do this using Homebrew on macOS.

```bash
# Install postgresql.
$ brew install postgresql

# (...)

# Run this after the installation
# to start the postgresql software
# in the background.
$ brew services start postgresql

# You should get the following output:
==> Successfully started `postgresql` (label: homebrew.mxcl.postgresql)
```

If you have a different system, [follow the relevant instructions](https://www.postgresql.org/download/), and you're not sure, ask your coach. If you have any trouble with the installation process, it's probably better to ask your coach for help, rather than spending too much time figuring it out.

## Demonstration

@TODO Here's a video demonstration.

[Next Challenge](02_using_psql.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=sql_bites/01_setting_up_database.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=sql_bites/01_setting_up_database.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=sql_bites/01_setting_up_database.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=sql_bites/01_setting_up_database.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=sql_bites/01_setting_up_database.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
