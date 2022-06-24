class TweetsController < ApplicationController
  before_action :set_tweet,only:[:edit,:show]

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.create(tweet_params)
    render :create, status: :created
  end

  def destroy
    tweet =Tweet.find(params[:id])
    tweet.destroy
    render :destroy,status: :see_other
  end

  def edit
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
    render :update,status: :created
  end

  def show
  end


  private

  def tweet_params
    params.require(:tweet).permit(:name,:image,:text)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end


end
