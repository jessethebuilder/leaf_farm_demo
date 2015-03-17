class DispensariesController < ApplicationController
  include ApplicationHelper

  before_action :set_dispensary, :only => [:show]

  respond_to :html, :js

  def show
  end

  def show_get_slug_modal
    cords = Address.geocode_zip(params[:zip])
    @stores = _leafly_connection.search_locations(cords[0], cords[1])

    #debug
    # @stores = [{'name' => 'Green Orchard', 'slug' => 'green-orchard'}, {'name' => 'Denver Relief', 'slug' => 'denver-relief'}]
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
