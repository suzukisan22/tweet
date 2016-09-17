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
    redirect_to root_path, notice: 'tweetを投稿しました'
  end
  
  private
    def tweet_params
      params.require(:exam01).permit(:content)
    end
end
