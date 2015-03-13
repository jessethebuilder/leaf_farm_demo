module ApplicationHelper
  #todo include as required methods in farm_tools. Throw method not implemented
  ############################farm _tools####################3
  def do_vendor?
    Rails.env.production?
    true

  end

  ############### end farm_tools########################################
end
