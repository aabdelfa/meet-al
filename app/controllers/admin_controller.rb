class AdminController < ApplicationController
 before_action :authenticate_admin!
  def index
  end
  def images
    @upload = Upload.new
  end
end
