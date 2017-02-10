class CreateControlDePeliculas < ActiveRecord::Migration
  def change
    create_table :control_de_peliculas do |t|
      t.string :titulo
      t.datetime :lancamento
      t.stringrecao :genero
      t.string :produtora
      t.string :duracao
      t.string :avaliacao

      t.timestamps
    end
  end
end
