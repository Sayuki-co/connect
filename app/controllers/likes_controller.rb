class LikesController < ApplicationController
    before_action :set_company

  def create
      @like = Like.new(user_id: @current_user.id, company_id: params[:company_id])
      @like.save
      redirect_to("/companies/#{params[:company_id]}")
  end

  def destroy
      @like = current_user.likes.find_by(company_id: params[:company_id])
      @like.destroy
      redirect_to("/companies/#{params[:company_id]}")
  end
  
  private
  
  def set_company
      @company = Company.find(params[:company_id])
  end
  
end
