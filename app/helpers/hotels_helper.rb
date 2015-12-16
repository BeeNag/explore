module HotelsHelper
	 def format_body(hotel)
        if hotel.body.present?
            # note you can call a helper from a helper
            hotel.body
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

    def format_image(hotel)
        if hotel.body.present?
            hotel.image
        else
            content_tag(:i, 'Not Available')
        end
    end
end
