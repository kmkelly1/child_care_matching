class AvailableHoursController < ApplicationController
  def index
    @available_hours = AvailableHour.page(params[:page]).per(10)

    render("available_hours/index.html.erb")
  end

  def show
    @available_hour = AvailableHour.find(params[:id])

    render("available_hours/show.html.erb")
  end

  def new
    @available_hour = AvailableHour.new

    render("available_hours/new.html.erb")
  end

  def create
    @available_hour = AvailableHour.new

    @available_hour.provider = params[:provider]
    @available_hour.time = params[:time]

    save_status = @available_hour.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/available_hours/new", "/create_available_hour"
        redirect_to("/available_hours")
      else
        redirect_back(:fallback_location => "/", :notice => "Available hour created successfully.")
      end
    else
      render("available_hours/new.html.erb")
    end
  end

  def edit
    @available_hour = AvailableHour.find(params[:id])

    render("available_hours/edit.html.erb")
  end

  def update
    @available_hour = AvailableHour.find(params[:id])

    @available_hour.provider = params[:provider]
    @available_hour.time = params[:time]

    save_status = @available_hour.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/available_hours/#{@available_hour.id}/edit", "/update_available_hour"
        redirect_to("/available_hours/#{@available_hour.id}", :notice => "Available hour updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Available hour updated successfully.")
      end
    else
      render("available_hours/edit.html.erb")
    end
  end

  def destroy
    @available_hour = AvailableHour.find(params[:id])

    @available_hour.destroy

    if URI(request.referer).path == "/available_hours/#{@available_hour.id}"
      redirect_to("/", :notice => "Available hour deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Available hour deleted.")
    end
  end
end
