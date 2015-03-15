class DispensaryMenusController < ApplicationController
  before_action :set_dispensary, :set_dispensary_menu, only: [:show]


  def show

  end

  private

  def set_dispensary
    @dispensary = Dispensary.first
  end

  def set_dispensary_menu
    #a Dispensary has to exit
    @dispensary_menu = @dispensary.dispensary_menu || @dispensary.build_dispensary_menu
  end
end