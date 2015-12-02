class Hotel
	attr_accessor :name 
end

class HotelsController < ApplicationController

	def index

		@hotels = []

		hotel1 = Hotel.new
		hotel1.name = "The Hilton Park Lane"

		hotel2 = Hotel.new
		hotel2.name = "The Continental"

		hotel3 = Hotel.new
		hotel3.name = "The Shangri-La"

		@hotels << hotel1
		@hotels << hotel2
		@hotels << hotel3

		# @hotels = ['The Mandarin Oriental', 'The Rosewood', 'The Dorchester', 'Grosvenor House']
	end

end
