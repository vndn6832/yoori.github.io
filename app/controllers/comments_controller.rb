class CommentsController < ApplicationController
    #C
    def create
        comment = Comment.new
        comment.post_id = params[:post_id]
        comment.content = params[:comment]
        comment.save
        
        redirect_to "/posts/show/#{params[:post_id]}"
    end
    
    #D
    def destroy
        comment = Comment.find(params[:comment_id])
        comment.destroy
      
        redirect_to "/posts/show/#{params[:post_id]}"
       
    end
    
end
