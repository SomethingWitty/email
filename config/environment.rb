# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Email::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => 'app20526350@heroku.com',
  :password       => 'mfu5i2o4',
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
}
