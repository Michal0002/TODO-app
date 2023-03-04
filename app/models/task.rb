# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  description :text
#  due_date    :date
#  priority    :integer
#  status      :integer          default("in_progress")
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
class Task < ApplicationRecord
    belongs_to :user

    validates :title, presence: true
    validates :description, length: { maximum: 1000 }
    validates :due_date, presence: true
    validate :due_date_cannot_be_in_the_past
    validates :priority, presence: true
    def due_date_cannot_be_in_the_past
      if due_date.present? && due_date < Date.today
        errors.add(:due_date, "can't be in the past")
      end
    end
    enum :priority, [:high, :medium, :low], default: :medium
    enum :status, [:completed, :in_progress, :canceled], default: :in_progress


end
