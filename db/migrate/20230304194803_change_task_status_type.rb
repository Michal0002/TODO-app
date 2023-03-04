class ChangeTaskStatusType < ActiveRecord::Migration[7.0]
  def change
    change_column :tasks, :status, :integer, default: '2'
  end
end
