json.extract! game, :id, :name, :url, :target_group, :theme_id, :genre_id, :violence_id, :created_at, :updated_at
json.url game_url(game, format: :json)
