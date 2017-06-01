json.extract! document, :id, :header, :title, :reference, :created_at, :updated_at
json.url document_url(document, format: :json)
