class DispensariesController < ApplicationController
  include ApplicationHelper

  before_action :set_leafly_slug, :only => [:show, :menu, :home, :pitch, :info]
  before_action :set_dispensary, :only => [:show, :menu, :home, :pitch, :info]

  respond_to :html, :js

  def show
    @specials = @dispensary.specials
    @menu = custom_menu_order(@dispensary.menu)
  end

  def home
    @news_stories = NewsStory.published.order('updated_at DESC')
  end

  def info

  end

  def pitch

  end

  private

  def _leafly_connection
    if Dispensary.first
      Dispensary.first.leafly_connection || create_leafly_connection_from_hal
    else
      create_leafly_connection_from_hal
    end
  end

  def create_leafly_connection_from_hal
    lc = LeaflyConnection.new :app_id => hal.social_networking['leafly']['id'],
                              :app_key => hal.social_networking['leafly']['key']
    lc.save
    lc
  end

  def set_leafly_slug
    @leafly_slug = params[:leafly_id] || Dispensary.first.leafly_slug

  end

  def set_dispensary
    @dispensary = Dispensary.find_or_build_from_leafly(@leafly_slug, _leafly_connection, :update_frequency => Integer(8.hours))
    if Dispensary.count == 0
      @dispensary.leafly_connection = _leafly_connection
      @dispensary.save
    end

    @show_leafly_target = true unless @dispensary.new_record?
  end

  def custom_menu_order(menu_hash)
    h = {}
    h['Flower'] = menu_hash.delete('Flower')
    other = menu_hash.delete('Other')
    h.merge(menu_hash).merge({'Other' => other})
  end



  #
  # def set_dispensary
  #   if params[:leafly_id]
  #     @dispensary = _leafly_connection.build_dispensary(@leafly_slug)
  #     @dispensary.leafly_connection = _leafly_connection
  #     @show_leafly_target = false
  #   else
  #     @dispensary = Dispensary.first
  #     @show_leafly_target = false
  #     #todo
  #     # @show_leafly_target = true
  #   end
  # end
end
