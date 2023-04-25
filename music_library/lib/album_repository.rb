require_relative './album'
require_relative './database_connection'

class AlbumRepository
  def all
    query = "SELECT * FROM albums;"
    result = DatabaseConnection.exec_params(query, [])

    albums = []

    result.each { |record|
      album = Album.new
      album.id = record["id"]
      album.title = record["title"]
      album.release_year = record["release_year"]
      album.artist_id = record["artist_id"]

      albums << album
    }

    return albums
  end

  def find(id)
    query = "SELECT * FROM albums WHERE id = '#{id}';"
    result = DatabaseConnection.exec_params(query, [])[0]
  end
end

