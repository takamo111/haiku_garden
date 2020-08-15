class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all.order("created_at DESC").page(params[:page]).per(20)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.create(name: tweet_params[:name], image: tweet_params[:image], text: tweet_params[:text],firstphrase: tweet_params[:firstphrase],secondphrase: tweet_params[:secondphrase],thirdphrase: tweet_params[:thirdphrase], user_id: current_user.id)
    if @tweet.save
      redirect_to root_path, notice: '投稿を作成しました'
    else
      render :new
    end
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def destroy
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.destroy
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text, :firstphrase, :secondphrase, :thirdphrase)
  end
end
