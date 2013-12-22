# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Email::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address 				=> "smtp.mandrillapp.com",
	:port						=> 587,
  :authentication => :plain,
	:user_name			=> APP_CONFIG['username'],
	:password				=> APP_CONFIG['password'],
	:domain 				=> "example.com",
  :enable_starttls_auto => true
}
