class UsersController < ApplicationController
  def edit
    @tweets = current_user.tweets.order("created_at DESC").page(params[:page]).per(20)
    tweet_like_count = current_user.tweets.joins(:likes).group(:tweet_id).count
    tweet_liked_ids = Hash[tweet_like_count.sort_by{ |_, v| -v }].keys
    @tweet_ranking= current_user.tweets.where(id: tweet_liked_ids).order("created_at DESC").page(params[:page]).per(20)
  end
  def show
    @tweets = Tweet.where(user_id:params[:id]).order("created_at DESC").page(params[:page]).per(20)
    tweet_like_count = Tweet.where(user_id:params[:id]).joins(:likes).group(:tweet_id).count
    tweet_liked_ids = Hash[tweet_like_count.sort_by{ |_, v| -v }].keys
    @tweet_ranking= Tweet.where(id: tweet_liked_ids).order("created_at DESC").page(params[:page]).per(20)
  end
end
