class StoreController < ApplicationController
  skip_before_filter :authorize
  
  def index
		if params[:set_locale]
			redirect_to store_path(:locale => params[:set_locale])
		else
			@locale = params[:locale].nil?? "en" : params[:locale]

			@products = Product.where("locale = ?", @locale)
			@counter = increment_count
			@cart = current_cart
		end
	end

	def increment_count
		if session[:counter].nil?
			session[:counter] = 0
		end
		session[:counter] += 1
	end
end
