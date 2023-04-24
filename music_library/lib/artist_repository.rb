require 'database_connection'

class ArtistRepository
  def all
    query = "SELECT id, name, genre FROM artists;"
    DatabaseConnection.exec_params(query, nil).to_a
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
    
  end

  def delete(artist)
    
  end
end