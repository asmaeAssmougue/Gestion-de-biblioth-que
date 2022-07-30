json.extract! livre, :id, :titre, :auteur, :editeur, :isbn, :stock, :created_at, :updated_at
json.url livre_url(livre, format: :json)
