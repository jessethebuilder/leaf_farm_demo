class DispensaryMenusController < ApplicationController
  before_action :set_dispensary, :set_menu, only: [:show]

  rescue_from JSON::ParserError do
    old_slug = params.delete('leafly_slug')
    set_dispensary
    set_menu
    flash[:alert] = "#{old_slug.titlecase} has not set up a Leafly profile. Please select another dispensary"
    render :show
  end

  def show
  end

  private

  def set_menu
    #@dispensary is set in ApplicationController
    @menu = @dispensary.dispensary_menu
  end


end