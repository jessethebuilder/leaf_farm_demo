class DispensaryMenusController < ApplicationController
  before_action :set_dispensary, :set_menu, only: [:show]


  def show
  end

  private

  def set_menu
    #@dispensary is set in ApplicationController
    @menu = @dispensary.dispensary_menu
  end
end