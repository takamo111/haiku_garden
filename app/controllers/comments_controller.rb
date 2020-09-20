class CommentsController < ApplicationController

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end

  def destroy
    @tweet = Tweet.find(params[:id])
    @comment = tweet.comments.find(params[:id])
    @comment.destroy
    redirect_back(fallback_location: root_path)
  end 

  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end 
end
