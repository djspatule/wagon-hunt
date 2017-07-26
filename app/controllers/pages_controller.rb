class PagesController < ApplicationController
skip_before_action :authenticate_user!
  def home
  end
  def team
    render plain: "meet the team"
  end
end
