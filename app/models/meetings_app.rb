# frozen_string_literal: true

class MeetingsApp < ApplicationRecord
  belongs_to :user

  validates :title, :description, :start_time, :end_time, :user_id, presence: true
  validates_datetime :start_time, on_or_after: -> { DateTime.current }
  validates :start_time, uniqueness: true
  validates_datetime :end_time, after: -> { DateTime.current }
  validates :end_time, uniqueness: true
  validates_datetime :end_time, after: :start_time
end
