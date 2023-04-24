require 'database_connection'

class ArtistRepository
  def all
    query = "SELECT id, name, genre FROM artists;"
    DatabaseConnection.exec_params(query, nil)
  end
  
  def create(artist)
    query = "INSERT INTO artists (name, genre) VALUES ('#{artist.name}', '#{artist.genre}');"
    DatabaseConnection.exec_params(query, nil)
  end

  def find(id)
    query = "SELECT id, title, release_year, artist_id FROM albums WHERE id = $1;"
    DatabaseConnection.exec_params(query, nil)
  end

  def update(artist)
    
  end

  def delete(artist)
    
  end
end