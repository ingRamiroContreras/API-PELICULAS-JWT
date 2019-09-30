class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.timestamps
      t.string      :nombre
      t.text        :descripcion
      t.string      :url_img
      t.integer     :dias_presentacion   
    end
  end
end
