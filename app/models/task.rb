# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  description :text
#  due_date    :datetime
#  priority    :integer
#  status      :boolean
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
class Task < ApplicationRecord
    belongs_to :user


    enum :priority, [:high, :medium, :low], default: :medium


end
