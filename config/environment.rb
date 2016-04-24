# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionView::Base.field_error_proc = Proc.new { |html_tag, instance|
    "<span class='error_proc'>#{html_tag}</span>".html_safe
  }

