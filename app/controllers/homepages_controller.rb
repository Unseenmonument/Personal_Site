class HomepagesController < ApplicationController

	def home
		@fan = Fan.new
    	@help = Help.new
    	@codework = Codework.new

    	@fans = Fan.all
	end
end
