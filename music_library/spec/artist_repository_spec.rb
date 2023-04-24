require 'artist_repository'
require 'database_connection'

def reset_music_library
  seed_sql = File.read('./spec/seeds_music_library.sql')
  connection = DatabaseConnection.connect('music_library')
  connection.exec(seed_sql)
end

describe ArtistRepository do
  before(:each) do 
    reset_music_library
  end


  it "Creates" do
    repo = ArtistRepository.new
    miley_cyrus = double(:artist, id: "3", name: "Miley Cyrus", genre: "Pop")
    repo.create(miley_cyrus)
    artists = repo.all.to_a
    expect(artists[-1]["id"]).to eq "3"
    expect(artists[-1]["name"]).to eq "Miley Cyrus"
    expect(artists[-1]["genre"]).to eq "Pop"
  end
end