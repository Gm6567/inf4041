class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.text :date
      t.text :description
      t.string :link
      t.string :slug
      t.string :titleen
      t.string :slugen
      t.text :descen
      t.text :dateen

      t.timestamps null: false
    end
  end
end
