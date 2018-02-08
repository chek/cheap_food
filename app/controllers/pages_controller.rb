class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
	@categories = %w(pizza starbacks chifan)			
  end
end
