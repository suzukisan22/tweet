class TweetsController < ApplicationController
  
  def index
    @tweet = Exam01.all
  end
  
  def new
    @tweet = Exam01.new
  end
  
  def create
    @tweet = Exam01.new(tweet_params)
    @tweet.save
    redirect_to tweets_path, notice: 'tweetを投稿しました'
  end
  
  def edit
    @tweet = Exam01.find(params[:id])
  end
  
  def update
    @tweet = Exam01.find(params[:id])
    @tweet.update(tweet_params)
    redirect_to tweets_path, notice: 'ツイートを更新しました'
  end
  
  def destroy
    @tweet = Exam01.find(params[:id])
    @tweet.destroy
    redirect_to tweets_path, notice: 'ツイートを削除しました'
  end
  
  private
    def tweet_params
      params.require(:exam01).permit(:content)
    end
end
