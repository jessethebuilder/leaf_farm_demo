class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def _leafly_connection
    @leafly_connection ||= LeaflyConnection.first
  end

  def _leafly_slug
    params[:leafly_slug] || Dispensary.first.leafly_slug
  end

  def set_dispensary
    @dispensary = Dispensary.find_or_build_from_leafly(_leafly_slug, _leafly_connection, :update_frequency => Integer(100.years))
    @dispensary.save
  end
end
