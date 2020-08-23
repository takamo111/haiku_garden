class UsersController < ApplicationController
  def edit
    @nickname = current_user.name
    @tweets = current_user.tweets.order("created_at DESC").page(params[:page]).per(20)
  end
end
