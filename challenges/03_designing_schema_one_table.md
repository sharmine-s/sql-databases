# Designing a schema with one table

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to design and create a schema with a single table.

## Introduction

So far you've been working with tables already designed and created for you. In this section you'll learn how to design a table schema (which columns and types it contains) from plain English user stories. Often, this design step will happen before you write the program that needs to interact with the database. Later on, as more features and changes are added to the program, this schema will likely evolve.

Designing a schema is an important part of designing and planning programs that need to use a database. As always, there can be different approaches to this, with different tradeoffs depending on the situation.

This module presents a few design recipes to follow for simple situations. Let's have a look at the first one.

## Design Recipe

You can follow steps from this [Design Recipe](../resources/single_table_design_recipe_template.md) to design the schema for a single table. The outline is:

1. List all the nouns from the specification or user stories.
2. Decide whether a noun is an entity (the table name) or a property of it (a column).
3. Decide the column types.
4. Write the SQL to create the table.

*As always with user stories, it's good to always really think about what data we need to store, rather than relying too much on the "extract nouns" technique, when it leads to awkward results.*

## Demonstration

@TODO video demo

## Exercise One

You should create a new database `student_directory_1` for this exercise.

Infer the table schema from these user stories.
```
As a coach
So I can get to know all students
I want to see a list of students' names.

As a coach
So I can get to know all students
I want to see a list of students' cohorts.
```

1. Copy the Design Recipe template and use it to design the schema for that table.
2. Create the table by loading the SQL table file in `psql`.

@TODO video

## Challenge

You should create a new database `movies_directory` for this exercise.

Infer the table schema from these user stories.
```
As a cinephile
So I can list all my favourite movies
I want to see a list of movies' titles.

As a cinephile
So I can list all my favourite movies
I want to see a list of movies' genres.

As a cinephile
So I can list all my favourite movies
I want to see a list of movies' release year.
```

1. Copy the Design Recipe template and use it to design the schema for that table.
2. Create the table by loading the SQL table file in `psql`.
3. To verify your work, run a `SELECT` query on the database to retrieve all the movies records.

[Next Challenge](04_design_and_test_driving_repository_class.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/03_designing_schema_one_table.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/03_designing_schema_one_table.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/03_designing_schema_one_table.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/03_designing_schema_one_table.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/03_designing_schema_one_table.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
