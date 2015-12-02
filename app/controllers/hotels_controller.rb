class HotelsController < ApplicationController

	def index

		@hotels = Hotel.all

		# @hotels = ['The Mandarin Oriental', 'The Rosewood', 'The Dorchester', 'Grosvenor House']
	end

end
