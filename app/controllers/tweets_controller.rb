class TweetsController < ApplicationController

  def new
    @tweet = Tweet.new
  end

  def create
    if @tweet = Tweet.create(body: params[:tweet][:body], user_id: current_user.id )
      redirect_to tweets_path
    else
      render :new
    end
  end
  
  #def index
	#@tweets = Tweet.all.order(:created_at => :desc)
  #end
  
   def index
    @tweets = Tweet.all.order('created_at DESC')
  end

end
