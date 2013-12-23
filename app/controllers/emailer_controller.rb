require 'mail'

class EmailerController < ApplicationController
  def send_email
		params.require("subject")
		params.require("to")
		params.require("body")
		Notifier.send_email(params["to"], params["subject"], params["body"]).deliver
  end
end
