require 'spec_helper'

describe EmailerController do
	it 'should parse and send correctly' do
		params = {"to" => "blah@blah.com", "subject" => "some subject", "body" => "some body"}
		Notifier.should_receive(:send_email).with("blah@blah.com", "some subject", "some body").and_return(double("Mailer", :deliver => true ) )
	  post :send_email, params
	end
end
