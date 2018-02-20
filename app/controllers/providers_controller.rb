class ProvidersController < ApplicationController
  def index
    @providers = Provider.page(params[:page]).per(10)
  end

  def show
    @provider = Provider.find(params[:id])
  end
end
