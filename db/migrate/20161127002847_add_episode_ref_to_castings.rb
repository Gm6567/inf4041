class AddEpisodeRefToCastings < ActiveRecord::Migration
  def change
    add_reference :castings, :episode, index: true, foreign_key: true
  end
end
