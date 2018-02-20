class ParentsController < ApplicationController
  def index
    @parents = Parent.page(params[:page]).per(10)
  end

  def show
    @parent = Parent.find(params[:id])
  end
end
