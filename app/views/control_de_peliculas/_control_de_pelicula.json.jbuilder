json.extract! control_de_pelicula, :id, :titulo, :lancamento, :genero, :produtora, :duracao, :avaliacao, :created_at, :updated_at
json.url control_de_pelicula_url(control_de_pelicula, format: :json)