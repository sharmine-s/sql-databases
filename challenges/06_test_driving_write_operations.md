# Test-driving write operations

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills.
They contain a mixture of text and video, and may contain some challenge exercises without
proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to test-drive "Repository" class methods to INSERT and DELETE.

## The `create` method

The process to follow is the same you used for the previous methods — but the operation we want to implement is to insert new records.

Here is a design for the `create` method of the example class `StudentRepository`:

| Method      |Job| Arguments | SQL query                                     | Returns  |
| ----------- |----|-----------| ----------------------------------------------|----------|
| `create`      |Insert a student| A `Student` object | `INSERT INTO students (name, cohort_name) VALUES ($1, $2) ` | - |



As the `INSERT` query contains some dynamic parts (the new values to insert), we need to use SQL parameters as well.

  ```sql
  INSERT INTO students (name, cohort_name) VALUES ($1, $2)
  ```

Here is the expected behaviour for the method:

```ruby
repository = StudentRepository.new

# Build a new model object
student = Student.new
student.name = 'Alice'
student.cohort_name = 'February 2022'

repository.create(student) # Performs the INSERT query

# Performs a SELECT query to get all records (implemented previously)
all_students = repository.all 

# all_students should contain the student 'Alice' created above.
```

## Demonstration

@TODO video demo

## Exercise One

Test-drive the method `.create` on the class `AlbumRepository` from the previous project
`music_library`.

```ruby
repository = AlbumRepository.new

album = Album.new
album.title = 'Trompe le Monde'
album.release_year = 1991
album.artist_id = 1

repository.create(album)

all_albums = repository.all

# The all_albums array should contain the new Album object
```

1. Encode the expected behaviour above as a new test for the `AlbumRepository` class.
2. Implement the `.create` method to make this test pass.

@TODO video

## Exercise Two

Test-drive the method `.delete` on the class `AlbumRepository` from the previous exercise.
It should delete a record given its ID.

Make sure you describe the design of this new method before test-driving it.

```ruby
repository = AlbumRepository.new

all_albums = repository.all

last_album = albums.last

repository.delete(last_album) # Performs a DELETE query to the database.

new_all_albums = repository.all # Should *not* contain the deleted album.
```

1. Encode the expected behaviour above as a new test for the `AlbumRepository` class.
2. Implement the `.delete` method to make this test pass.

@TODO video

## Challenge

This is a process feedback challenge. That means you should record yourself doing it and
submit that recording to your coach for feedback. [How do I do
this?](https://github.com/makersacademy/golden-square/blob/main/pills/process_feedback_challenges.md)

This is a big one! To work on this challenge, first:
  * Setup a new project directory `social_network`.
  * Create a new database `social_network`.

Then:

1. Design the two tables for the following user stories.  

    ```
    As a social network user,
    So I can have my information registered,
    I'd like to have a user account with my email address.

    As a social network user,
    So I can have my information registered,
    I'd like to have a user account with my username.

    As a social network user,
    So I can write on my timeline,
    I'd like to create posts associated with my user account.

    As a social network user,
    So I can write on my timeline,
    I'd like each of my posts to have a title and a content.

    As a social network user,
    So I can know who reads my posts,
    I'd like each of my posts to have a number of views.
    ```

2. Test-drive the Model and Repository classes for these two tables.
    * You should end up with two Model classes and two Repository classes.
    * You should test-drive and implement the four methods `all`, `find`, `create` and
      `delete` for each Repository class.

3. If you'd like an extra challenge, test-drive as well an `update` method for both classes, which updates a specific record.

[After you're done, submit your recording
here](https://airtable.com/shrNFgNkPWr3d63Db?prefill_Item=db_as03).

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/06_test_driving_write_operations.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/06_test_driving_write_operations.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/06_test_driving_write_operations.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/06_test_driving_write_operations.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/06_test_driving_write_operations.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
