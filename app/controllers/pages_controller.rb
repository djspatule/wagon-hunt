class PagesController < ApplicationController
  def home
  end
  def team
    render plain: "meet the team"
  end
end
