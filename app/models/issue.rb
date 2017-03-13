
class Issue < ApplicationRecord

  validates_presence_of :issue_url, :user_name, :user_id, :body


    # @number = params[:number]
    # @owner = params[:owner]
    # @repo = params[:repo]
  def self.getIssue(id)
	@client = GithubClient.new({owner: "plataformatec", repo:"devise", number: 2692})
	comments = @client.comments

	comments.each do |comment|
		puts comment["issue_url"]
		puts comment["user"]["login"]
		puts comment["user"]["id"]
		puts comment["body"]	
	end
  end

  def getIssue(id)
	@client = GithubClient.new({owner: "plataformatec", repo:"devise", number: 2692})
	comments = @client.comments

  end

end
