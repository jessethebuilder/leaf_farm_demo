module ApplicationHelper
  include FarmTools
  include TwitterBootstrapHelper

  #todo include as required methods in farm_tools. Throw method not implemented
  ############################farm _tools####################3
  def do_vendor?
    Rails.env.production?
    true
  end

  def fb_app_id
    Dispensary.first.contact_info.social_networking_profile.facebook_app_id if Dispensary.first
  end

  ############### end farm_tools########################################
end
