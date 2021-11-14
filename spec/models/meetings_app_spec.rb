require 'rails_helper'

RSpec.describe MeetingsApp do
  describe 'validations' do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:start_time) }
  it { should validate_uniqueness_of(:start_time)}
  it { is_expected.to validate_presence_of(:end_time) }
  it { should validate_uniqueness_of(:end_time)}
  it { is_expected.to validate_presence_of(:user_id) }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end
end
