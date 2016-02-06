class LanguagesController < ApplicationController
  before_action :authenticate_admin!
  def index
   @language = Language.sorted
  end
  def show
    @language = Language.find(params[:id])
  end
  def new
   @language = Language.new
  end
  def create
    @language = Language.new(language_params)
    if @language.save
      flash[:success] = "Language created successfully"
      redirect_to @language
    else
      render 'new'
    end
  end
  def edit
   @language = Language.find(params[:id])
  end
  def update
    @language = Language.find(params[:id])
    if @language.update_attributes(language_params)
      flash[:success] = "Updated Sucessfully!"
      redirect_to(action: 'index')
    else
      flash[:error] = "Oops! Something went wrong."
      render 'edit'
    end
  end
  def destroy
    @language = Language.find(params[:id])
    @language.destroy
    flash[:success] = "Language deleted successfully"
    redirect_to action: 'index'
  end
   private

    def language_params
      params.require(:language).permit(:name, :position, :visible,
                                   :content_type, :content, :icon)
    end
end
