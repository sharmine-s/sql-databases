require_relative './artist'
require_relative './database_connection'

class ArtistRepository
  def all
    query = "SELECT id, name, genre FROM artists;"
    result = DatabaseConnection.exec_params(query, [])

    artists = []

    result.each { |record|
      artist = Artist.new
      artist.id = record['id']
      artist.name = record['name']
      artist.genre = record['genre']

      artists << artist
    }

    return artists
  end
  
  def create(artist)
    query = "INSERT INTO artists (name, genre) VALUES ('#{artist.name}', '#{artist.genre}');"
    DatabaseConnection.exec_params(query, nil)
  end

  def find(id)
    query = "SELECT * FROM artists WHERE id = '#{id}';"
    result = DatabaseConnection.exec_params(query, nil).to_a
    return result[0]
  end

  def update(artist)
    query = "UPDATE artists SET name = '#{artist.name}', genre = '#{artist.genre}' WHERE id = '#{artist.id}';"
    result = DatabaseConnection.exec_params(query, nil)
    return find(artist.id)
  end

  def delete(artist)
    query = "DELETE FROM artists WHERE id = '#{artist.id}';"
    result = DatabaseConnection.exec_params(query, nil)
  end
end