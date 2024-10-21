json.extract! empresa, :id, :nome, :cnpj, :endereco, :logotipo, :created_at, :updated_at
json.url empresa_url(empresa, format: :json)
