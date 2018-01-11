class CreateWikis < ActiveRecord::Migration[5.1]
  def change
    create_table :wikis do |t|
      t.string :title
      t.string :resources
      t.string :author
      t.integer :views

      t.timestamps
    end
  end
end
