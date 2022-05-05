# Test-driving a Repository class "find" method

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to test-drive a "Repository" class method to SELECT a single record from the database.

## Intro

You previously learned how to test-drive a Repository class method to retrieve all records from a table (usually we'd name this method `all`). 

In this section, you will learn how to test-drive a method `find` that selects a single record using its id.

### Micro Exercise

Write the SQL query to select the record with id `1` from the `albums` table.

### Using a parameter

We want our Ruby method to receive the id to find as an argument, and build a SQL query that uses this value to find the right record.

We'll use what is called a SQL **parameter**. Here's an example of a "parameterised" query:

```sql
SELECT name, cohort_name FROM students WHERE id = $1;
```

The placeholder `$1` is then dynamically replaced by our program when executing the query. Here's how it looks like once implemented with Ruby:

```ruby
# file: lib/student_repository.rb

class StudentRepository

  def find(id)
    # The placeholder $1 is a "parameter" of the SQL query.
    # It needs to be matched to the corresponding element 
    # of the array given in second argument to exec_params.
    #
    # (If we needed more parameters, we would call them $2, $3...
    # and would need the same number of values in the params array).
    sql = 'SELECT name, cohort_name FROM students WHERE id = $1;'

    params = [id]

    result = DatabaseConnection.exec_params(sql, params)

    # (...)
    # (convert the result to a Student instance and return it)
  end
end
```

## Demonstration

@TODO video demo

## Exercise

Work in the project directory `music_library` you've worked on before.

You can use the Design recipe document you used to test-drive the `AlbumRepository#all` method previously — this time, adapting the steps 5 to 8 for that new method. 

1. Test-drive and implement the method `find` on the `AlbumRepository` class. 
2. Modify the program in `app.rb` so it prints out to the terminal the data of the record with id `3`.

## Challenge

1. In a new database `recipes_directory`, design the table for the following user stories.
2. In a new project `recipes_directory`, test-drive the Model and Repository classes for this new table. You should test-drive and implement two methods `all` and `find`.

```
As a food lover,
So I can stay organised and decide what to cook,
I'd like to keep a list of all my recipes with their names.

As a food lover,
So I can stay organised and decide what to cook,
I'd like to keep the average cooking time (in minutes) for each recipe.

As a food lover,
So I can stay organised and decide what to cook,
I'd like to give a rating to each of the recipes (from 1 to 5).
```

[Next Challenge](05_designing_schema_two_tables.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/04_design_and_test_driving_repository_class.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/04_design_and_test_driving_repository_class.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/04_design_and_test_driving_repository_class.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/04_design_and_test_driving_repository_class.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/04_design_and_test_driving_repository_class.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
