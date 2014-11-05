class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string :title1
      t.string :url1
      t.string :title2
      t.string :url2
      t.string :title3
      t.string :url3

      t.timestamps
    end
  end
end
