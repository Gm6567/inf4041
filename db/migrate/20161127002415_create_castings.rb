class CreateCastings < ActiveRecord::Migration
  def change
    create_table :castings do |t|
      t.string :noma
      t.string :linka
      t.string :nomb
      t.string :linkb
      t.string :nomc
      t.string :linkc

      t.timestamps null: false
    end
  end
end
