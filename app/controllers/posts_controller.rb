class PostsController < ApplicationController
    #c
    def new
        # views/new.erb 보여줘
    end
    
    def create
        post = Post.new
        post.title = params[:post_title]
        post.content = params[:post_content]
        post.save
        redirect_to '/'
    end
    
    #R 1.제목 / 2.내용
    def index #제목만
        # views/index.erb 보여줘
        @posts = Post.all
    end
    
    def show #내용만
        # views/show.erb 보여줘
        @post = Post.find(params[:post_id])
        # @comments = Comment.where(post_id: params[:post_id])
    end
    
    #U
    def edit
        @post = Post.find(params[:post_id])
    end
    def update
        @post = Post.find(params[:post_id])
        @post.title = params[:post_title]
        @post.content = params[:post_content]
        @post.save
        redirect_to '/'
    end
    
    #D
    def destroy
        post = Post.find(params[:post_id])
        post.destroy
        
        redirect_to '/'
    end
end
