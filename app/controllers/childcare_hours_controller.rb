class ChildcareHoursController < ApplicationController
  def index
    @childcare_hours = ChildcareHour.page(params[:page]).per(10)

    render("childcare_hours/index.html.erb")
  end

  def show
    @childcare_hour = ChildcareHour.find(params[:id])

    render("childcare_hours/show.html.erb")
  end

  def new
    @childcare_hour = ChildcareHour.new

    render("childcare_hours/new.html.erb")
  end

  def create
    @childcare_hour = ChildcareHour.new

    @childcare_hour.child = params[:child]
    @childcare_hour.time = params[:time]

    save_status = @childcare_hour.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/childcare_hours/new", "/create_childcare_hour"
        redirect_to("/childcare_hours")
      else
        redirect_back(:fallback_location => "/", :notice => "Childcare hour created successfully.")
      end
    else
      render("childcare_hours/new.html.erb")
    end
  end

  def edit
    @childcare_hour = ChildcareHour.find(params[:id])

    render("childcare_hours/edit.html.erb")
  end

  def update
    @childcare_hour = ChildcareHour.find(params[:id])

    @childcare_hour.child = params[:child]
    @childcare_hour.time = params[:time]

    save_status = @childcare_hour.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/childcare_hours/#{@childcare_hour.id}/edit", "/update_childcare_hour"
        redirect_to("/childcare_hours/#{@childcare_hour.id}", :notice => "Childcare hour updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Childcare hour updated successfully.")
      end
    else
      render("childcare_hours/edit.html.erb")
    end
  end

  def destroy
    @childcare_hour = ChildcareHour.find(params[:id])

    @childcare_hour.destroy

    if URI(request.referer).path == "/childcare_hours/#{@childcare_hour.id}"
      redirect_to("/", :notice => "Childcare hour deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Childcare hour deleted.")
    end
  end
end
