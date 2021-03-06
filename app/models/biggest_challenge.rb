class BiggestChallenge < ApplicationRecord
  belongs_to :user

  scope :today, -> { where(created_at: DateTime.now.beginning_of_day..DateTime.now.end_of_day) }
end
