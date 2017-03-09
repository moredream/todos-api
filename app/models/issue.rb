class Issue < ApplicationRecord

  validates_presence_of :issue_url, :user_name, :user_id, :body

end
