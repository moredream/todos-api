class GithubClient
  include HTTParty
  base_uri 'https://api.github.com'

  def initialize(params)
    @number = params[:number]
    @owner = params[:owner]
    @repo = params[:repo]
  end

  def comments
    self.class.get(set_path)
  end

  private

  attr_reader :number, :owner, :repo

  # GET /repos/:owner/:repo/issues/:number/comments
  def set_path
    "/repos/#{owner}/#{repo}/issues/#{number}/comments"
  end

end