class WelcomeController < ApplicationController

  def index
  	@languages = Language.sorted
  end
  
  def about
  	render('about')
  end
end
