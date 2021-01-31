json.extract! record, :id, :rec_id, :minutes, :notes, :date, :user_id, :activity_id, :created_at, :updated_at
json.url record_url(record, format: :json)
