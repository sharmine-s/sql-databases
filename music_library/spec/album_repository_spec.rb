require 'album_repository'
require 'album'
require 'database_connection'

def reset_music_library
  seed_sql = File.read('./spec/seeds_music_library.sql')
  connection = connection = PG.connect({ host: '127.0.0.1', dbname: 'music_library_test' })
  connection.exec(seed_sql)
end

describe AlbumRepository do
  before(:each) do 
    reset_music_library
  end

  it "returns all albums" do
    repo = AlbumRepository.new
    albums = repo.all
    expect(albums.length).to eq 2
    expect(albums[0].id).to eq "1"
    expect(albums[0].title).to eq "Rumours"
    expect(albums[0].release_year).to eq "1977"
    expect(albums[0].artist_id).to eq "1"
  end

  it "finds a specific album" do
    repo = AlbumRepository.new
    album = repo.find(1)
    expect(album.title).to eq "Rumours"
    expect(album.release_year).to eq "1977"
    expect(album.artist_id).to eq "1"
    album = repo.find(2)
    expect(album.title).to eq "Dangerous Woman"
    expect(album.release_year).to eq "2016"
    expect(album.artist_id).to eq "2"
  end
end