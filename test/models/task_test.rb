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
require "test_helper"

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
