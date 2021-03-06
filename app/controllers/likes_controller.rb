class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(tweet_id: params[:tweet_id])
    if @like.save
      flash[:success] = "いいね登録しました"
      redirect_to "/tweets"
    end
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, tweet_id: params[:tweet_id])
    if @like.destroy
      flash[:success] = "いいね解除しました"
      redirect_to "/tweets"
    end
  end
end
