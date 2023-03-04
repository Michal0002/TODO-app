class Task < ApplicationRecord
    belongs_to :user


    enum :priority, [:high, :medium, :low], default: :medium


end
