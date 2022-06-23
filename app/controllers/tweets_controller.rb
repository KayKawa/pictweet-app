class TweetsController < ApplicationController
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

  private

  def tweet_params
    params.require(:tweet).permit(:name,:image,:text)
  end


end
