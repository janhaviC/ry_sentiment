json.extract! sentiment, :id, :interaction_no, :advocate_id, :url, :status, :score, :magnitude, :sentiment, :detail, :created_at, :updated_at
json.url sentiment_url(sentiment, format: :json)
