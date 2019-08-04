class BoardsController < ApplicationController
  def index
      @companies = Company.first(15)
  end

end
