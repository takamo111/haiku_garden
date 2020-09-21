class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all.order("created_at DESC").page(params[:page]).per(20)
    @likes=Like.all
    tweet_like_count = Tweet.joins(:likes).group(:tweet_id).count
    tweet_liked_ids = Hash[tweet_like_count.sort_by{ |_, v| -v }].keys
    @tweet_ranking= Tweet.where(id: tweet_liked_ids).order("created_at DESC").page(params[:page]).per(20)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path, notice: '投稿を作成しました'
    else
      render :new
    end
  end


  def edit
    @tweet = Tweet.find(params[:id])
    @comment = @tweet.comments.build
    @comments = Comment.all.order("created_at DESC")
  end

  def destroy
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.destroy
    end
  end


  private
  def tweet_params
    params.require(:tweet).permit(:image, :text, :firstphrase, :secondphrase, :thirdphrase).merge(user_id: current_user.id) 
  end
end
