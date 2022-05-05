# Updating and deleting data

_**This is a Makers Bite.** Bites are designed to train specific skills or
tools. They contain an intro, a demonstration video, some exercises with an
example solution video, and a challenge without a solution video for you to test
your learning. [Read more about how to use Makers
Bites.](https://github.com/makersacademy/course/blob/main/labels/bites.md)_

Learn to write `UPDATE` and `DELETE` SQL queries.

## Introduction

In this section you'll learn about two other type of SQL queries, `UPDATE` and `DELETE` which, as their name implies, are used to update and delete records.

### Updating records

```sql
UPDATE [table name] SET [column_name] = [new_value];
```

```sql
UPDATE albums SET title = 'A new title';
```

However this would update the `title` for **all records**, which is usually not what we want. Like for `SELECT` queries, we can use `WHERE` to specify which records to update. 

```sql
UPDATE [table name] SET [column_name] = [new_value], [other_column_name] = [other_new_value];
```


### Updating specific records

```sql
UPDATE [table name] SET [column_name] = [new_value]
  WHERE [conditions];
```

### Deleting records

```sql
DELETE FROM [table name] WHERE [conditions];

-- Or, delete all records (danger zone!)
DELETE FROM [table name];
```

## Exercise

Update the `release_year` of the album with ID `3` to `1972`.

Use a `SELECT` query to get that specific record and verify it has been updated.



[Next Challenge](05_creating_new_data.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=sql_bites/04_updating_and_deleting_date.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=sql_bites/04_updating_and_deleting_date.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=sql_bites/04_updating_and_deleting_date.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=sql_bites/04_updating_and_deleting_date.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=sql_bites/04_updating_and_deleting_date.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
