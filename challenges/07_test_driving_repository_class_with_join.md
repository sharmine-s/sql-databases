# Test-driving a Repository class with two related Models

Learn to test-drive "Model" and "Repository" classes to SELECT related records from the database.

_Make sure you've worked with `JOIN` queries before starting this section. If you need a refresher, spend a bit of time revisiting it._

## Intro

You've previously learned how to test-drive a method `find` that retrieves a single record, and return an instance of the model.

To select an artist and all the corresponding albums, which could use code like this:

```ruby
artist_repository = ArtistRepository.new
album_repository = AlbumRepository.new

artist = artist_repository.find(1)

albums = album_repository.all

# And then filter the albums array depending on the artist_id value
```

However this is not great for two reasons:
  * we're fetching _all_ albums only to later filter the ones associated with the artist we have
  * we're making _two_ queries to the database rather than a single one

You've also learned about using `JOIN` to select data from two tables at the same time. In this section, you'll learn how to build a method `find_with_****`, that returns a single record, alongside its related rows in the other table.

For example, we could fetch a single artist, and get its related albums this way:

```ruby
# Example:

repository = ArtistRepository.new

# Perfoms a SELECT with a JOIN and returns an Artist instance.
# This instance also has an attribute .albums, which is an array
# of Album instances.
artist = repository.find_with_albums(1)

artist.id # 1

artist.albums # is an array of Album instances
```

We'll need to add the instance variable `albums` to the `Artist` class. By default, this would be an empty array.

```ruby
# file: lib/artist.rb

class Artist
  attr_accessor :id, :name, :genre, :albums

  def initialize
    @albums = []
  end
end
```

Then we'll test-drive, encoding the expected behaviour as an RSpec test.

```ruby
# file: spec/artist_repository_spec.rb

describe ArtistRepository do

  # (...)

  it 'finds artist 1 with related albums' do
    repository = ArtistRepository.new
    artist = repository.find_with_albums(1)

    expect(artist.name).to eq('Pixies')
    expect(artist.albums.length).to eq(3)
  end
end
```

And then the method implementation:

```ruby
# file: lib/artist_repository.rb

class ArtistRepository
  def find_with_albums(id)
    sql = 'SELECT artists.id,
                  artists.name,
                  artists.genre,
                  albums.id AS album_id,
                  albums.title,
                  albums.release_year
          FROM artists
          JOIN albums ON albums.artist_id = artists.id
          WHERE artists.id = $1;'

    params = [id]

    result = DatabaseConnection.exec_params(sql, params)

    artist = Artist.new

    artist.id = result.first['id']
    artist.name = result.first['name']
    artist.genre = result.first['genre']

    result.each do |record|
      album = Album.new
      album.id = record['album_id']
      album.title = record['title']
      album.release_year = record['release_year']

      artist.albums << album
    end
  end
end
```


## Demonstration

@TODO video demo

## Exercise

Use the database `student_directory_2` from the previous section. If you didn't design and create the tables yourself, download the SQL exemplar and load it into the database.

1. Test-drive and implement the three classes for the `students` and `cohorts` table.   
  You should end up with three classes:
    * `Student`
    * `Cohort`
    * `CohortRepository` — test-drive the method `find_with_students`.

2. Write a small program in `app.rb` using the class `CohortRepository` to print out the data of one cohort with its students to the terminal.

## Challenge

Use the database `blog` from the previous section. If you didn't design and create the tables yourself, download the SQL exemplar and load it into the database.

1. Test-drive and implement the three classes for the `posts` and `comments` table.

2. Write a small program in `app.rb` using the class `PostRepository` to print out the data of one post with its comments to the terminal.

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/07_test_driving_repository_class_with_join.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/07_test_driving_repository_class_with_join.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/07_test_driving_repository_class_with_join.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/07_test_driving_repository_class_with_join.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/07_test_driving_repository_class_with_join.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
