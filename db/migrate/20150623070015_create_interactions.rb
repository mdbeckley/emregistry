class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.string :user
      t.string :title
      t.string :category
      t.integer :pcs
      t.text :text
      t.timestamp :timestamp

      t.timestamps null: false
    end
  end
end
