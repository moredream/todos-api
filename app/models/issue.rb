
class Issue < ApplicationRecord

  validates_presence_of :issue_url, :user_name, :user_id, :body


    # @number = params[:number]
    # @owner = params[:owner]
    # @repo = params[:repo]
	# params {owner: "plataformatec", repo:"devise", number: 2692}
  def self.getIssue(params)
		@client = GithubClient.new(params)
		comments = @client.comments

		comments.each do |comment|

			issue_args   = { issue_url:  comment["issue_url"] ,
											user_name: comment["user"]["login"],
											user_id: comment["user"]["id"],
											body:  comment["body"] }
			Issue.create(issue_args)
		end

	end

	def self.getIssueLater(params)
		@client = GithubClient.new(params)
		comments = @client.comments

		comments.each do |comment|

			issue_args   = { issue_url:  comment["issue_url"] ,
											 user_name: comment["user"]["login"],
											 user_id: comment["user"]["id"],
											 body:  comment["body"] }
			IssueCollectorJob.perform_later issue_args
		end
	end

  # def getIssue(id)
  # @client = GithubClient.new({owner: "plataformatec", repo:"devise", number: 2692})
  # comments = @client.comments
  #
  # end

end
