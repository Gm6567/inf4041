class CreateFellows < ActiveRecord::Migration
  def change
    create_table :fellows do |t|
      t.string :name
      t.text :date
      t.text :description
      t.text :link
      t.text :descen
      t.text :dateen

      t.timestamps null: false
    end
  end
end
