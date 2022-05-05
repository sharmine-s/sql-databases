# Test-driving a Repository class with two related Models

Learn to test-drive "Model" and "Repository" classes to SELECT related records from the database.

## Intro

@TODO write this

```ruby
# Example:

album_repository = AlbumRepository.new 

all_albums = album_repository.all # Performs a SELECT query and returns an array of Album instances.

# Performs a SELECT query with a JOIN to get a single album alongside its artists.
# Returns an Album instance.
album = album_repository.find_with_artists(1)

album.comments # Returns an array of Comment instances.
```

## Design Recipe

You can follow steps from this [Design Recipe](../resources/) to design, test-drive and implement these three classes for a given table. The outline is:
  1. Design and create the two related tables.
  2. Infer the class names from the table names.
  3. Implement the two Model classes.
  4. Decide on which Repository class to create.
  4. Decide on the operations (methods) to implement for the Repository class.
  5. Write the SQL queries for each operation.
  6. Write a SQL data seed and insert it.
  7. Encode a RSpec test example for one method.
  8. Implement the behaviour of that method.

## Demonstration

@TODO video demo

## Exercise

Use the database `student_directory_2` from the previous section. If you didn't design and create the tables yourself, download the SQL exemplar and load it into the database.

1. Copy the Design Recipe Template and adapt it to test-drive and implement the three classes for the `students` and `cohorts` table.

2. Write a small program in `app.rb` using the class `CohortRepository` to print out the data of one cohort with its students to the terminal.

## Challenge

Use the database `blog` from the previous section. If you didn't design and create the tables yourself, download the SQL exemplar and load it into the database.

1. Copy the Design Recipe Template and adapt it to test-drive and implement the three classes for the `posts` and `comments` table.

2. Write a small program in `app.rb` using the class `PostRepository` to print out the data of one post with its comments to the terminal.

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/07_test_driving_repository_class_with_join.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/07_test_driving_repository_class_with_join.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/07_test_driving_repository_class_with_join.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/07_test_driving_repository_class_with_join.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/07_test_driving_repository_class_with_join.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
