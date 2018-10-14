class HomepagesController < ApplicationController

	def home
		@fan = Fan.new
    	@help = Help.new
    	@codework = Codework.new

    	@stories = Story.all

    	@fans = Fan.all
	end
end
