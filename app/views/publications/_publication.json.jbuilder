json.extract! publication, :id, :code, :title, :date, :p_type, :created_at, :updated_at
json.url publication_url(publication, format: :json)
