class UploadsController < ApplicationController
   before_action :authenticate_admin!
  def index
    @upload = Upload.sorted
  end
  def new
    @upload = Upload.new
  end
  def show
    @upload = Upload.find(params[:id])
  end
   def create
    @upload = Upload.create( upload_params )
    if @upload.save
      flash[:success] = 'Image Uploaded Successfully'
      redirect_to @upload
    else
      #  you need to send an error header.
          #  will not interpret the response as an error:
      flash[:success] = 'Upload Failed!'
    end     
  end

  private
  def upload_params
    params.require(:upload).permit(:image)
  end
end
