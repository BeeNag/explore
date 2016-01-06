class Hotel < ActiveRecord::Base

	has_many :reviews, dependent: :destroy

	validates :title, presence: true
	validates :body, length: {minimum: 10}
	validates :price, numericality: {greater_than_or_equal_to: 0}
	validates :image, allow_blank: true, format: {
		with: /\w+\.(gif|jpg|png)\z/i,
		message: "must be a valid image (GIF, JPG or PNG)"
	}

	def self.luxury_hotels
		where("price > 100")
	end

	def self.bargain_hotels
		where("price <= 100")
	end

	def self.luxury_price_range_min
		where("price > 100").minimum("price")
	end

	def self.luxury_price_range_max
		where("price > 100").maximum("price")
	end

	def self.bargain_price_range_min
		where("price <= 100").minimum("price")
	end

	def self.bargain_price_range_max
		where("price <= 100").maximum("price")
	end
end
