class ConnectsController < ApplicationController
    
    def show
        @connect = Connect.find(params[:id])
        @comments = Comment.where(connect_id: @connect.id)
        @comment = Comment.new(flash[:comment])
    end
    
    def create
        connect = Connect.new(connect_params)
        if connect.save
            flash[:notice] = 'チャットルームへようこそ'
            redirect_to connect
        else
            redirect_to :back, flash: {
                connect: connect,
                error_messages: connect.errors.full_messages
            }
        end
    end
    
    def destroy
        connect = Connect.find(params[:id])
        connect.delete
        redirect_to connect, flash: { notice: 'メッセージが削除されました' }
    end
    
    private
    
    def connect_params
        params.require(:connect).permit(:user_id, :company_user_id, comments_attributes: [:id, :user_id, :comment, :_destroy] )
    end
end
