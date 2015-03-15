class DispensariesController < ApplicationController
  include ApplicationHelper

  before_action :set_leafly_slug, :only => [:show, :menu, :home, :pitch, :info]
  before_action :set_dispensary, :only => [:show, :menu, :home, :pitch, :info]

  respond_to :html, :js

  def show
  end

  private


  def custom_menu_order(menu_hash)
    #put Flower first and Other last
    h = {}
    h['Flower'] = menu_hash.delete('Flower')
    other = menu_hash.delete('Other')
    h.merge(menu_hash).merge({'Other' => other})
  end
end
