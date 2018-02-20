class ChildrenController < ApplicationController
  def index
    @children = Child.all

    render("children/index.html.erb")
  end

  def show
    @child = Child.find(params[:id])

    render("children/show.html.erb")
  end

  def new
    @child = Child.new

    render("children/new.html.erb")
  end

  def create
    @child = Child.new

    @child.guardian = params[:guardian]

    save_status = @child.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/children/new", "/create_child"
        redirect_to("/children")
      else
        redirect_back(:fallback_location => "/", :notice => "Child created successfully.")
      end
    else
      render("children/new.html.erb")
    end
  end

  def edit
    @child = Child.find(params[:id])

    render("children/edit.html.erb")
  end

  def update
    @child = Child.find(params[:id])

    save_status = @child.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/children/#{@child.id}/edit", "/update_child"
        redirect_to("/children/#{@child.id}", :notice => "Child updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Child updated successfully.")
      end
    else
      render("children/edit.html.erb")
    end
  end

  def destroy
    @child = Child.find(params[:id])

    @child.destroy

    if URI(request.referer).path == "/children/#{@child.id}"
      redirect_to("/", :notice => "Child deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Child deleted.")
    end
  end
end
