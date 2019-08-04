class CompaniesController < ApplicationController
    before_action :set_target_company, only: %i[edit update destroy show]
    
  def index
      @companies = Company.page(params[:page])
  end

  def new
    @company = Company.new(flash[:company])
    @member = @company.members.build
  end

  def create
    company = Company.new(company_params)
    if company.save
      flash[:notice] = "登録しました"
      redirect_to company
    else
      redirect_to :back, flash: {company: company, error_messages: company.errors.full_messages}
    end
  end
  
  def show
      @members = @company.members
      @user = User.find_by(id: @current_user)
      @like = Like.new
      @connect = Connect.new(company_user_id: @company.user_id)
      @connects = Connect.find_by(user_id: @user.id, company_user_id: @company.user_id)
      @connect.comments.build
  end
  
  def edit
      @company.attributes = flash[:company] if flash[:company]
  end
  
  def update
      if @company.update(company_params)
          redirect_to @company
      else
      redirect_to :back, flash: {
          company: @company, error_messages: @company.errors.full_messages
      }
      end
  end
  
  def destroy
      @company.destroy
      redirect_to company_path, fkash: { notice: "削除しました" }
  end
 
  def search
      @companies = Company.where('area LIKE?', "%#{params[:area]}%").page(params[:page])
      render :index
  end
  
  def select
      @companies = Company.where('occupation LIKE?', "%#{params[:occupation]}%").page(params[:page])
      render :index
  end
 
  private
  def company_params
      params.require(:company).permit(:name, :occupation, :hope, :image, :outline, :introduce, :want, :message, :area, :user_id, members_attributes: [:id, :image, :name, :message, :_destroy] )
  end
  
  def set_target_company
      @company = Company.find(params[:id])
  end

end
