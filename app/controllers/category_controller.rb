class CategoryController < ApplicationController
	include CategoryHelper
	def index
    # @categories = Category.all
    fetch_categories
  end
end
