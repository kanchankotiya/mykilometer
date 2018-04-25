json.extract! event, :id, :name, :baneer_image, :description, :start_datetime, :end_datetime, :vanue, :address, :latitude, :longitude, :event_type_id, :created_at, :updated_at
json.url event_url(event, format: :json)
