class MeetingsApp < ApplicationRecord
  belongs_to :user

  validates :title, :description, :start_time, :end_time, :user_id, presence: true

end
