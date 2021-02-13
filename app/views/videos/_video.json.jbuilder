json.extract! video, :id, :file, :created_at, :updated_at
json.url video_url(video, format: :json)
