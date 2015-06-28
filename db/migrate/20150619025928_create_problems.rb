class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :name
      t.string :issue
      t.string :comment
      t.boolean :fixed

      t.timestamps null: false
    end
  end
end
