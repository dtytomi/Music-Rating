json.array!(@musics) do |music|
  json.extract! music, :id, :Artist, :Album, :description, :ratings, :picture
  json.url music_url(music, format: :json)
end
