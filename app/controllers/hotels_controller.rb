class HotelsController < ApplicationController

	def index

		@hotels = Hotel.all

	end

	def show

		@hotels = Hotel.find(params[:id])

	end

end
