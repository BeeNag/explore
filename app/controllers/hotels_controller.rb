class HotelsController < ApplicationController

	before_action :require_login, only: [:show, :edit, :update, :new, :create, :destroy]

	def index
		@hotels = Hotel.all
		@hotels = Hotel.order(title: :asc)
		@luxury_hotels = Hotel.luxury_hotels
		@bargain_hotels = Hotel.bargain_hotels
		@luxury_price_range_min = Hotel.luxury_price_range_min
		@luxury_price_range_max = Hotel.luxury_price_range_max
		@bargain_price_range_min = Hotel.bargain_price_range_min
		@bargain_price_range_max = Hotel.bargain_price_range_max
		@all_hotels = Hotel.all
		@reviewed_hotels = Hotel.with_reviews
		@unreviewed_hotels = Hotel.without_reviews
	end

	def show
		@hotel = Hotel.find(params[:id])
	end

	def edit
		@hotel = Hotel.find(params[:id])
	end

	def update
		@hotel = Hotel.find(params[:id])
		if @hotel.update(hotel_params)
			flash[:notice] = "Congrats! You successfully updated this Hotel"
			redirect_to hotel_path(@hotel)
		else
			render :edit
		end
	end

	def new
		@hotel = Hotel.new
	end

	def create
		@hotel = Hotel.new(hotel_params)

		if(@hotel.save)
			redirect_to hotel_path(@hotel)
		else
			render :new
		end
	end

	def destroy
		Hotel.find(params[:id]).destroy
		redirect_to hotels_path
	end

	private

	def hotel_params
		params.require(:hotel).permit(:title, :body, :price)
	end

end
