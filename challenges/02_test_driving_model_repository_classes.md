# Test-driving Model and Repository classes

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to test-drive "Model" and "Repository" classes to SELECT records from the database.

## Introduction

In the realm of PostgreSQL, we manipulate tables, column names and records. However, in Ruby programs, we represent data using classes, instances and instance variables. We therefore need a way to "transform" the data retrieved from the database into data that can be used by our program. 

To achieve this, you will learn how to build two kind of classes — they're regular Ruby classes, but designed to achieve a specific purpose in our program:
* A **Model** class represent the shape of our database record.   
  For example, if we have one table `students`, we'd have a class `Student` with attributes for each column. It usually doesn't contain any logic, but is only used to store data.

* A **Repository** class implements methods to retrieve, create, update or delete data to/from the database. 
  For example, if we have one table `students`, we'd have a class `StudentRepository` containing methods that communicates with the database using SQL.

```ruby
# Example:

repository = StudentRepository.new 

all_students = repository.all # Performs a SELECT query and returns an array of Student objects.

new_student = Student.new
new_student.name = 'Josh'
new_student.cohort_name = 'March 22'

repository.create(new_student) # Creates a new student by performing a INSERT query.
```

This technique (converting records from a database into objects we use in our program) is also called **object-relational mapping**.

## Design Recipe

You can follow steps from this [Design Recipe](../resources/repository_class_recipe_template.md) to design, test-drive and implement these two classes for a given table. The outline is:
  1. Design the table and create it in your database.
  2. Infer the class names from the table name.
  3. Implement the Model class.
  4. Decide on the operations (methods) to implement for the Repository class — here we'll start with the simplest - querying all records.
  5. Write the SQL queries for each operation.
  6. Write a SQL data seed and insert it.
  7. Encode a RSpec test example for one method.
  8. Implement the behaviour of that method.

## Demonstration

@TODO video demo

## Exercise One

*You will use the same database you've worked with in the previous SQL bites, `music_library`.*

Create a new project `music_library` for this exercise.

1. Copy the [Design Recipe Template](../resources/repository_class_recipe_template.md) and adapt it to test-drive and implement the two classes for the `albums` table (ignore the `artists` table, for now). 

    **You should skip step 1**, as the table has already been created in your database.

@TODO video solution

### Trying out with a small program

We can write a small program in a file `app.rb` to print out the records:

```ruby
# file: app.rb

require_relative 'lib/database_connection'
require_relative 'lib/album'
require_relative 'lib/album_repository'

DatabaseConnection.connect('design')

repository = AlbumRepository.new

p repository.all
```

## Exercise Two

Work in the same project directory `music_library` for this exercise.

1. Copy the [Design Recipe Template](../resources/repository_class_recipe_template.md) and adapt it to test-drive and implement the two classes for the `artists` table.  

    **You should skip step 1**, as the table has already been created in your database.

2. Write a small program in `app.rb` using the class `ArtistRepository` to print out the list of artists to the terminal.

@TODO video solution

## Challenge

To work on this challenge, first:
  * Setup a new project directory `book_store`.
  * Create a new database `book_store`.
  * [Import this SQL seed into that new database.](../resources/seeds/book_store.sql)

Then: 
1. [Use the design recipe to test-drive](../resources/repository_class_recipe_template.md) and implement the classes `Book` and `BookRepository`.
2. Write a small program in `app.rb` using the class `BookRepository` to print out the list of books to the terminal. You should get an output that looks roughly like this:

```
$ ruby app.rb

1 - Nineteen Eighty-Four - George Orwell
2 - Mrs Dalloway - Virginia Woolf
3 - Emma - Jane Austen
4 - Dracula - Bram Stoker
5 - The Age of Innocence - Edith Wharton
```


[Next Challenge](03_designing_schema_one_table.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/02_test_driving_model_repository_classes.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/02_test_driving_model_repository_classes.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/02_test_driving_model_repository_classes.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/02_test_driving_model_repository_classes.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/02_test_driving_model_repository_classes.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
