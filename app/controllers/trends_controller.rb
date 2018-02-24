class TrendsController < ApplicationController
  def index
    @trends = Post.all
  end
  
    def show
    @tweet = Post.find(params[:id])
    end
    
    def new
      @tweet = Post.new
    end
    
    def edit
      @tweet = Post.find(params[:id])
    end
    
    def create
        @tweet = Post.new(tweet_params)
      if @tweet.save
        redirect_to new_trend_url
      else
         render 'new'
      end
    end
    
    def update
        @tweet = Post.find(params[:id])
 
      if @tweet.update(tweet_params)
        redirect_to trends_url
      else
         render 'edit'
      end
    end
    
    def destroy
      @tweet = Post.find(params[:id])
      @tweet.destroy
 
      redirect_to trends_path
    end
    
    private
      def tweet_params
        params.require(:post).permit(:title, :text)
      end
  
end
