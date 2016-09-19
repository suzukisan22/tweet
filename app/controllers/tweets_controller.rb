class TweetsController < ApplicationController
  before_action :set_tweet, only: [:edit, :update, :destroy]
  
  def index
    @tweet = Exam01.order(:created_at)
  end
  
  def new
    if params[:back]
      @tweet = Exam01.new(tweet_params)
    else
      @tweet = Exam01.new
    end
  end
  
  def confirm
    @tweet = Exam01.new(tweet_params)
    render :new if @tweet.invalid?
  end
  
  def create
    @tweet = Exam01.new(tweet_params)
    if @tweet.save
      redirect_to root_path, notice: 'ツイートを投稿しました'
    else 
      render :new
    end
  end
  
  def edit
  end
  
  def update
    @tweet.update(tweet_params)
    redirect_to root_path, notice: 'ツイートを更新しました'
  end
  
  def destroy
    @tweet.destroy
    redirect_to root_path, notice: 'ツイートを削除しました'
  end
  
  private
    def tweet_params
      params.require(:exam01).permit(:content)
    end
    
    def set_tweet
      @tweet = Exam01.find(params[:id])
    end
end
