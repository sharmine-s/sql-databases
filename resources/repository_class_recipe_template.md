# {{TABLE NAME}} Model and Repository Classes Design Recipe

## 1. Design and create the Table

If the table is already created, you can skip this step. Otherwise, design and create the SQL schema for this table.

*In this template, we'll use an example table `students`*

```
# EXAMPLE

Table: students
Columns:

id | name | cohort_name
```

## 2. Define the class names

Usually, the Model class will be the capitalised table name (single instead of plural), and then suffixed by `Repository` for the Repository class.

```ruby
# EXAMPLE
# Table name: students

# Model class
# (in lib/student.rb)
class Student
end

# Repository class
# (in lib/student_repository.rb)
class StudentRepository
end
```

## 3. Implement the Model class

Define the attributes of your Model class. You can usually map the table columns to the attributes (instance variables) of the class, including primary and foreign keys.

```ruby
# EXAMPLE
# Table name: students

# Model class
# (in lib/student.rb)

class Student
  attr_accessor :id, :name, :cohort_name
end
```

*You may chose to test-drive this class, but unless it contains any more logic than the example above, it is not required.*

## 4. Define the Operations

Your Repository class will need to implement methods for each "read" or "write" operation you'd like to run against the database. They can be:

  * selecting *all* records.
  * selecting *a single* record (usually given its `id`).
  * creating *a new* record.
  * updating *a single* record (usually given its `id`).
  * deleting *a single* record (usually given its `id`).
  * or more complex operations, using joins, for example.

Start off with the simplest — selecting *all* records. This will be implemented by a method `all` on our Repository class.

```ruby
# EXAMPLE
# Table name: students

# Repository class
# (in lib/student_repository.rb)
class StudentRepository

  # Selecting all records
  def all
    # returns an array of `Student` instances.
  end

  # Add more methods for each operation you'd like to implement.
end
```

## 5. Write the SQL queries

Write the SQL queries for each operation (each method of the Repository class).

(You may want to try out the SQL query first using `psql` to make sure the SQL query works.)

*Example: for class `StudentRepository` (table name `students`). Replace this example for your own table and class*

| Method      | SQL                                                  |
| ----------- | ---------------------------------------------------  |
| `all`       | `SELECT id, name, cohort_name FROM students;`        |
|             |                                                      |
|             | (add more here)                                      |

## 6. Create Test SQL seeds

Your tests will depend on data stored in PostgreSQL to run.

If the seed data is provided (or you already created it), you can skip this test.

If you need to create some, the simplest way is to create some fake data using `psql` or another software, and then export the data as SQL.

```sql
-- EXAMPLE
-- (file: spec/seeds_{table_name}.sql)

-- Write your SQL seed here. 

-- First, you'd need to truncate the table - this is so our table is emptied between each test run,
-- so we can start with a fresh state.
-- (RESTART IDENTITY resets the primary key)

TRUNCATE TABLE students RESTART IDENTITY; -- replace with your own table name.

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO students (name, cohort_name) VALUES ('David', 'April 2022');
INSERT INTO students (name, cohort_name) VALUES ('Anna', 'May 2022');
```

Run this SQL file on the database to truncate (empty) the table, and insert the seed data.

```bash
psql -h 127.0.0.1 your_database_name < seeds_{table_name}.sql
```

## 7. Define a Test Example

```ruby
# EXAMPLE

repo = StudentRepository.new

students = repo.all

students.length # ==> 2

students[0].id # ==> 1
students[0].name # ==> 'David'
students[0].cohort_name # ==> 'April 2022'

students[1].id # ==> 2
students[1].name # ==> 'Anna'
students[1].cohort_name # ==> 'May 2022'
```

Encode this example as a test.

## 8. Reload the SQL seeds before each test run

Running the SQL code present in the seed file will empty the table and re-insert the seed data.

This is so you get a fresh table contents every time you run the test suite.

```ruby
# EXAMPLE

# file: spec/student_repository_spec.rb

def reset_students_table
  seed_sql = File.read('spec/seeds_students.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'students' })
  connection.exec(seed_sql)
end

describe StudentRepository do
  before(:all) do 
    reset_students_table
  end

  # (your tests will go here).
end
```

## 9. Implement the behaviour

```ruby
# EXAMPLE

# Replace any relevant elements of this example
# with your own design.

# file: lib/student_repository.rb

class StudentRepository
  
  def all
    # Initialise the array to return.
    students = []

    # Send the SQL query and get the result set.
    sql = 'SELECT id, name, cohort_name FROM students;'
    result_set = DatabaseConnection.exec_params(sql, [])
    
    # The result set is an array of hashes.
    # Loop through it to create a model
    # instance for each record hash.
    result_set.each do |record|

      # Create a new model instance
      # with the record data.
      student = Student.new
      student.id = record['id']
      student.name = record['name']
      student.cohort_name = record['cohort_name']

      students << student
    end

    return students
  end
end
```

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=resources/repository_class_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=resources/repository_class_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=resources/repository_class_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=resources/repository_class_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=resources/repository_class_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
