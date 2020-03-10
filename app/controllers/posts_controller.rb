class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # add create method here
  def create
      @post = Post.new                         # create a new object
      @post.title = params[:title]             # add title 
      @post.description = params[:description] # add description
      @post.save                               # Save the object and the attributes of the new post 
      redirect_to post_path(@post)             # redirect to the current id that was just made
  end 
end
