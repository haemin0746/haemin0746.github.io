class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    a = Post.new
    a.title = params[:user_name]
    a.content = params[:user_bio]
    a.save
    
    ##혹은
    #Post.create(title:params[:title],
    #            content:params[:content])
                
    ## 이 액션에 대한 view를 띄워주지 않을 경우
    redirect_to :root
  end
  def show
    id = params[:id]
    @one_post = Post.find(id)
    #혹은
    #Post.find(params[:id])
  end
end
