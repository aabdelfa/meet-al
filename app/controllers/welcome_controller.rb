class WelcomeController < ApplicationController

	def index
		@languages = Language.sorted
	end
  def about
    @timelines = Timeline.sorted
    @uploads = Upload.sorted
  end
  def services
  end
end
