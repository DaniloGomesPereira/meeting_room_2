# frozen_string_literal: true

json.array! @meetings_apps, partial: 'meetings_apps/meetings_app', as: :meetings_app
