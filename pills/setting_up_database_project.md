# Setting up a project

**@TODO A video demonstration is here. If you follow this directly, make sure you create a new directory and run the commands in that directory.**

Learn to setup a Ruby project with SQL migrations.

## Guidance

First, setup a new RSpec project.

```bash
# Add the pg gem
bundle add pg

# The DatabaseConnection helper class (see below)
touch lib/database_connection.rb

# The SQL test seeds file
touch spec/seeds.sql
```

### The `DatabaseConnection` class

```ruby
# file: lib/database_connection.rb

require 'pg'

# This class is a thin "wrapper" around the
# PG library. We'll use it in our project to interact
# with the database using SQL.

class DatabaseConnection
  def self.connect(database_name)
    @connection = PG.connect({ host: '127.0.0.1', dbname: database_name })
  end

  def self.exec_params(query, params)
    @connection.exec_params(query, params)
  end
end

```

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=pills/setting_up_database_project.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=pills/setting_up_database_project.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=pills/setting_up_database_project.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=pills/setting_up_database_project.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=pills/setting_up_database_project.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
