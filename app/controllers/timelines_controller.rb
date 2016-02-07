class TimelinesController < ApplicationController
  before_action :authenticate_admin!
  def index
    @timeline = Timeline.sorted
  end
  def new
    @timeline = Timeline.new
  end
  def create
    @timeline = Timeline.new(timeline_params)
    if @timeline.save
      flash[:success] = "Status created successfully"
      redirect_to @timeline
    else
      render 'new'
    end
  end  
  def edit
   @timeline = Timeline.find(params[:id])
  end
  def update
    @timeline = Timeline.find(params[:id])
    if @timeline.update_attributes(timeline_params)
      flash[:success] = "Updated Sucessfully!"
      redirect_to(action: 'index')
    else
      flash[:error] = "Oops! Something went wrong."
      render 'edit'
    end
  end
  def destroy
    @timeline = Timeline.find(params[:id])
    @timeline.destroy
    flash[:success] = "Status deleted successfully"
    redirect_to action: 'index'
  end
   private

    def timeline_params
      params.require(:timeline).permit(:user, :image, :content)
    end
end
