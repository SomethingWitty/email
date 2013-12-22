require 'mail'

class EmailerController < ApplicationController
  def send_email
		Notifier.send_email(params["to"], params["subject"], params["body"]).deliver
  end
end
