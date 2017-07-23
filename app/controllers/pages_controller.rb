class PagesController < ApplicationController
  def home
    render plain: "Welcome !!"
  end
  def team
    render plain: "meet the team"
  end
end
