require 'rails_helper'

RSpec.describe Issue, type: :model do

  it { should validate_presence_of(:issue_url) }
  it { should validate_presence_of(:user_name) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:body) }

end
