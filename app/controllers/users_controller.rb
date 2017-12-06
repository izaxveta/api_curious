class UsersController < ApplicationController
  def show
    oauth_response = Faraday.get("https://api.github.com/user?access_token=#{current_user.token}")
    auth = JSON.parse(oauth_response.body)
    @user = current_user
  end
end