class ChangeDueDateTypeInTasks < ActiveRecord::Migration[7.0]
  def change
      change_column :tasks, :due_date, :date
    
  end
end
