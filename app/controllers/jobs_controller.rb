class JobsController < ApplicationController
    def stay
        @companies = Company.where(occupation: "stay").page(params[:page])
    end

    def create
        @companies = Company.where(occupation: "create").page(params[:page])
    end
    
    def future
        @companies = Company.where(occupation: "future").page(params[:page])
    end
    
    def etc
        @companies = Company.where(occupation: "etc").page(params[:page])
    end
end
