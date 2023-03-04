class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.boolean :status
      t.datetime :due_date
      t.integer :priority
      t.integer :user_id

      t.timestamps
    end
  end
end
