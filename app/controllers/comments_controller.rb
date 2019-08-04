class CommentsController < ApplicationController
    
    
    def create
        comment = Comment.new(comment_params)
        if comment.save
            flash[:notice] = 'メッセージを投稿しました'
            redirect_to connect_path(comment.connect_id)
            else
            redirect_to :back, flash: {
                comment: comment,
                error_messages: comment.errors.full_messages
            }
        end
    end
    
    def destroy
        connect = Connect.find(params[:id])
        connect.delete
        redirect_to connect, flash: { notice: 'メッセージが削除されました' }
    end
    
    private
    
    def comment_params
        params.require(:comment).permit(:connect_id, :user_id, :comment)
    end
end
