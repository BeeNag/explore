module HotelsHelper
	 def format_body(hotel)
        if hotel.body.present?
            # note you can call a helper from a helper
            truncate(hotel.body, length: 20, separator: ' ')
        else
            content_tag(:i, 'n/a')
        end
    end

    def format_price(hotel)
    	if hotel.body.present?
    		hotel.price
    	else
    		content_tag(:i, 'On Request')
    	end
    end
end
