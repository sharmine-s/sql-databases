# Wrapping the program in an Application class

You've built Repository and Model classes to provide an interface to the database. These
classes' job is to make the bridge between the rest of our program and the database. It's
often called the **database layer** or **model layer**.

If we split our program into different "layers" depending on what their job is, we can see
two different ones appearing — the database layer, and the rest of our program, which
usually contains all the program logic.

On the diagram below, you can see this split — the part on the right is the database layer
containing the Model and Repository classes learned in this module.

![Program layers](./resources/program-layers.png)

Therefore, our program needs at least one class as part of its "core" layer.

## The Application class interface

This class wraps the other layer — it acts as an entrypoint to our program

```ruby
# file: app.rb

require_relative './lib/album_repository'
require_relative './lib/artist_repository'

class Application

  # The Application class initializer
  # takes three arguments:
  #  * the Kernel object as `io` (so we can mock the IO in our tests)
  #  * the AlbumRepository object (or a double of it)
  #  * the ArtistRepository object (or a double of it)
  def initialize(io, album_repository, artist_repository)
    @io = io
    @album_repository = album_repository
    @artist_repository = artist_repository
  end

  def run
    # "Runs" the terminal application
    # so it can ask the user to enter some input
    # and then decide to run the appropriate action
    # or behaviour.

    # Use `@io.puts` or `@io.gets` to
    # write output and ask for user input.
  end
end

# If we run this file using `ruby app.rb`,
# run the app.
app = Application.new(
  Kernel,
  AlbumRepository.new,
  ArtistRepository.new
)
app.run
```

_If you're not sure why we're giving the `Kernel` as an argument to our class, [see this bite about unit-testing IO](https://github.com/makersacademy/golden-square/blob/main/mocking_bites/05_unit_testing_terminal_io_bite.md)_

## Exercise

Test-drive and implement an `Application` class for the `music_library` project.

Running the program should have the following behaviour in the terminal:

```bash
$ ruby app.rb

Welcome to the music library manager!

What would you like to do?
 1 - List all albums
 2 - List all artists

Enter your choice: 1
[ENTER]

Here is the list of albums:
 * 1 - Doolittle
 * 2 - Surfer Rosa
 * 3 - Waterloo
 * 4 - Super Trouper
 * 5 - Bossanova
 * 6 - Lover
 * 7 - Folklore
 * 8 - I Put a Spell on You
 * 9 - Baltimore
 * 10 -	Here Comes the Sun
 * 11 - Fodder on My Wings
 * 12 -	Ring Ring
```

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/07_wrapping_in_application_class.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/07_wrapping_in_application_class.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/07_wrapping_in_application_class.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/07_wrapping_in_application_class.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/databases&prefill_File=challenges/07_wrapping_in_application_class.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
