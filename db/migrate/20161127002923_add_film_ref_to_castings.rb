class AddFilmRefToCastings < ActiveRecord::Migration
  def change
    add_reference :castings, :film, index: true, foreign_key: true
  end
end
