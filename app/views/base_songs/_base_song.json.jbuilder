json.extract! base_song, :id, :title, :created_at, :updated_at
json.url base_song_url(base_song, format: :json)
