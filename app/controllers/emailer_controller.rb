require 'mail'

class EmailerController < ApplicationController
  def send_email
		puts "blah"
		Notifier.send_email.deliver
		puts "second one"
  end
end
