class CommentsController < ApplicationController
    def new
        @comment = Comment.new
    end
    

    def create
        @artwork = Artwork.find(params[:artwork_id])
        @comment = @artwork.comments.create(comment_params)
        @comment.user = current_user
        redirect_to artwork_path(@artwork)

        if @comment.save!
            flash[:success] = "Comment sent!"
        end     
      end
     
      private
        def comment_params
          params.require(:comment).permit(:user, :body)
        end
end
