class IssueCollectorJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Issue.create(args)
  end
end
