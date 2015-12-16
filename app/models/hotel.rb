class Hotel < ActiveRecord::Base

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
