class DispensaryMenusController < ApplicationController
  before_action :set_dispensary, :set_menu, only: [:show]


  def show
    @specials = @dispensary.dispensary_menu.quick_specials
  end

  private

  def set_menu
    #a Dispensary has to exit
    @menu = @dispensary.dispensary_menu.quick_menu
  end
end