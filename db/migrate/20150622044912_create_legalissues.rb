class CreateLegalissues < ActiveRecord::Migration
  def change
    create_table :legalissues do |t|
      t.string :name
      t.string :issue
      t.text :comment
      t.boolean :done

      t.timestamps null: false
    end
  end
end
