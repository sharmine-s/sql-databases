# Many-to-many relationships

_**This is a Makers Bite.** Bites are designed to train specific skills or
tools. They contain an intro, a demonstration video, some exercises with an
example solution video, and a challenge without a solution video for you to test
your learning. [Read more about how to use Makers
Bites.](https://github.com/makersacademy/course/blob/main/labels/bites.md)_

Learn to design a many-to-many relationship between two tables.

## Intro

A many-to-many relationship is needed when a record from the first table can have _many_ records in the other table, but the opposite is also true.

You can recognise the need for a many-to-many relationship when you can answer "yes" to the following questions:

1. Can one [ENTITY ONE] have many [ENTITY TWO]?
2. Can one [ENTITY TWO] have many [ENTITY ONE]?

As an example: a blog post can have many tags. But a tag can also be associated with many posts.

1. Can a _post_ have many _tags_? - Yes
1. Can a _tag_ have many _posts_? - Yes

When designing a many-to-many relationship, you will need a third table, acting as a "link" between to the tables. This is called a **join table**. It contains two columns, which are two foreign keys, each linking to the two tables.

## Design Recipe

@TODO

## Demonstration

@TODO

## Exercise

## Challenge


[Next Challenge](05_repository_classes_many_to_many.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=joins/04_designing_many_to_many_relationships.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=joins/04_designing_many_to_many_relationships.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=joins/04_designing_many_to_many_relationships.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=joins/04_designing_many_to_many_relationships.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=joins/04_designing_many_to_many_relationships.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
