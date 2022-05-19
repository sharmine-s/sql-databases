# Setting up a project

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to setup a Ruby project with a database connection wrapper.

## Intro

In this series of challenges you will build a few different projects. Before we get started, you'll need to set up a new RSpec project.

This project will use a few components:

* **Ruby and RSpec**  
  The programming language and test framework will be the same as what you've previously used.
* **The `pg` gem**  
  This library allows us to send SQL queries to the database, and retrieve the result set.
* **A class `DatabaseConnection`**  
  This class acts as a thin layer with methods to connect to PostgreSQL and send SQL queries to it.

[To set up your project follow this guide.](../pills/setting_up_database_project.md)

Follow the guidance linked above to create a new project `music_library`. Then move on to the next step.

## The `DatabaseConnection` class

Let's focus for a bit on the `DatabaseConnection` class:

```ruby
# file: lib/database_connection.rb

require 'pg'

# This class is a thin "wrapper" around the
# PG library. We'll use it in our project to interact
# with the database using SQL.

class DatabaseConnection
  # This method connects to PostgreSQL using the 
  # PG gem. We connect to 127.0.0.1, and select
  # the database name given in argument.
  def self.connect(database_name)
    @connection = PG.connect({ host: '127.0.0.1', dbname: database_name })
  end

  # This method executes an SQL query 
  # on the database, providing some optional parameters
  # (you will learn a bit later about when to provide these parameters).
  def self.exec_params(query, params)
    @connection.exec_params(query, params)
  end
end
```

The important part is the method `exec_params` we call on the `@connection` object. This will transform the result set returned by the database into an array of hashes.

```ruby
# EXAMPLE
# For the following result set:

# id |     name     | genre 
# ----+--------------+-------
#   1 | Pixies       | Rock
#   2 | ABBA         | Pop
#   3 | Taylor Swift | Pop
#   4 | Nina Simone  | Pop


# We'd get the following Ruby array of hashes:

[
  {
    'id' => 1,
    'name' => 'Pixies',
    'genre' => 'Rock'
  },
  {
    'id' => 2,
    'name' => 'ABBA',
    'genre' => 'Pop'
  },
  {
    'id' => 3,
    'name' => 'Taylor Swift',
    'genre' => 'Pop'
  }
  # (...)
]
```

## The main file

Update the main file `app.rb` to send a `SELECT` SQL query to the database (using the `DatabaseConnection` class) and print the returned result set.

```ruby
# file: app.rb

require_relative 'lib/database_connection'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('music_library')

# Perform a SQL query on the database and get the result set.
sql = 'SELECT id, title FROM albums;'
result = DatabaseConnection.exec_params(sql, [])

# Print out each record from the result set.
result.each do |record|
  p record
end
```

Run this file with `ruby app.rb`, and you should get the following output:

```
{"id"=>"1", "title"=>"Doolittle"}
{"id"=>"2", "title"=>"Surfer Rosa"}
{"id"=>"3", "title"=>"Waterloo"}
{"id"=>"4", "title"=>"Super Trouper"}
{"id"=>"5", "title"=>"Bossanova"}
{"id"=>"6", "title"=>"Lover"}
{"id"=>"7", "title"=>"Folklore"}
{"id"=>"8", "title"=>"I Put a Spell on You"}
{"id"=>"9", "title"=>"Baltimore"}
{"id"=>"10", "title"=>"Here Comes the Sun"}
{"id"=>"11", "title"=>"Fodder on My Wings"}
{"id"=>"12", "title"=>"Ring Ring"}
```

## Troubleshooting

If you get a SQL error, use the error message to find out what went wrong — make sure the database name is correct, and that there are no syntax errors in the SQL query.

If you spent some time debugging this setup, and you're not sure of what the problem is, ask your coach.

[Next Challenge](02_test_driving_model_repository_classes.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/01_setting_up_project.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/01_setting_up_project.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/01_setting_up_project.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/01_setting_up_project.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/01_setting_up_project.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
