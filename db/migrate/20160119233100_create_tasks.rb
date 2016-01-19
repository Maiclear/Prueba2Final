class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.references :user, index: true, foreign_key: true
      t.references :proyect, index: true, foreign_key: true
      t.integer :role
      t.string :image
      t.timestamp :duedate

      t.timestamps null: false
    end
  end
end
