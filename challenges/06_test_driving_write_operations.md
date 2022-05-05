# Test-driving "write" operations

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to test-drive "Repository" class methods to INSERT and DELETE.

## Intro

@TODO write this

The process to follow is actually a subset of the Design recipe to test-drive a Repository class — but for other operations, such as `create`, to insert new records:
  1. Write the SQL query to be performed by the new method you need.
  2. Encode a RSpec test example for that new method.
  3. Implement the behaviour.

Here's an example with a class `StudentRepository` you worked on earlier. We'll test-drive together the `.create` method to insert a new `Student` record.

1. First, let's write the SQL needed to insert a new record:  

    ```sql
    INSERT INTO students (name, cohort_name) VALUES ($1, $2)
    ```

2. @TODO
    ```ruby
    repository = StudentRepository.new

    student = Student.new
    student.name = 'Alice'
    student.cohort_name = 'February 2022'

    repository.create(student)
    ```

    ```ruby
    # file: spec/student_repository_spec.rb

    ```
3. Implement
    ```ruby
    # file: lib/student_repository.rb

    class StudentRepository

      # (Other methods here)

      def create(student)
        sql = 'INSERT INTO students (name, cohort_name) VALUES($1, $2);'
        params = [student.name, student.cohort_name]

        DatabaseConnection.exec_params(sql, params)

        return student
      end
    end
    ```

## Exercise One

Test-drive the method `.create` on the class `AlbumRepository` from the previous project `music_library`.

```ruby
repository = AlbumRepository.new

album = Album.new
album.title = 'Trompe le Monde'
album.release_year = 1991
album.artist_id = 1

repository.create(album)

repository.all # The returned array should contain the new Album instance
```

1. Encode the expected behaviour above as a new test for the `AlbumRepository` class.
2. Implement the `.create` method to make this test pass.

## Exercise Two

Test-drive the method `.delete` on the class `AlbumRepository` from the previous exercise.

```ruby
repository = AlbumRepository.new

all_albums = repository.all

last_album = albums.last

repository.delete(last_album) # Performs a DELETE query to the database.

new_all_albums = repository.all # Should *not* contain the deleted album.
```

1. Encode the expected behaviour above as a new test for the `AlbumRepository` class.
2. Implement the `.delete` method to make this test pass.

## Challenge

This is a process feedback challenge. That means you should record yourself doing it and submit that recording to your coach for feedback. [How do I do this?](https://github.com/makersacademy/golden-square/blob/main/pills/process_feedback_challenges.md)

1. In a new database `places_directory`, design the table for the following user stories.
2. In a new project, test-drive the Model and Repository classes for this new table. You should test-drive and implement four methods `all`, `find`, `create` and `delete`.

```
As a person who likes going out,
So I can remember all the nice places I've been to,
I'd like to keep a list of places with their names.

As a person who likes going out,
So I can remember all the nice places I've been to,
I'd like to record the address of each place and their postcode.

As a person who likes going out,
So I can remember all the nice places I've been to,
I'd like to have a rating (of 1 to 5) for each place.
```

[After you're done, submit your recording here](https://airtable.com/shrNFgNkPWr3d63Db?prefill_Item=db_as02).

[Next Challenge](07_test_driving_repository_class_with_join.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/06_test_driving_write_operations.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/06_test_driving_write_operations.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/06_test_driving_write_operations.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/06_test_driving_write_operations.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/06_test_driving_write_operations.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
