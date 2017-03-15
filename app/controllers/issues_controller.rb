class IssuesController < ApplicationController
#  before_action :set_issue, only: [:show, :update, :destroy]

  # GET /issues
  def index
    @issues = Issue.all
    json_response(@issues)
  end

  # POST /issues
  def create
    @issue = Issue.getIssue(issue_params)
    json_response(@issue, :created)
  end

  private

  def issue_params
    # whitelist params
    #params {owner: "plataformatec", repo:"devise", number: 2692}
    params.permit(:owner, :repo, :number)
  end

  def set_issue
    @issue = Issue.find(params[:id])
  end
end
