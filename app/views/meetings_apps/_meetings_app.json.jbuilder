# frozen_string_literal: true

json.extract! meetings_app, :id, :title, :description, :start_time, :end_time, :user_id, :created_at, :updated_at
json.url meetings_app_url(meetings_app, format: :json)
