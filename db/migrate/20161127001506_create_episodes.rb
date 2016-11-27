class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.string :video_link
      t.string :titleen
      t.text :descen

      t.timestamps null: false
    end
  end
end
