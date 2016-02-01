class WelcomeController < ApplicationController

	def index
		@languages = Language.sorted
	end
  def about
    @timelines = Timeline.sorted
  end
  def services
  end
end
