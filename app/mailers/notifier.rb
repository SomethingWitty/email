require 'mail'

class Notifier < ActionMailer::Base
	include SendGrid
  default :from => 'noreply@example.com'
	
	def send_email
		puts "boogers"
		mail = Mail.deliver do
			to 'tsai.stephen@gmail.com'
			from 'noreply@example.com'
			subject 'blah'
			text_part do 
				body 'whatever'
			end
			html_part do
				content_type 'text/html; charset=UTF-8'
			  body '<b>Hello world in HTML</b>'
			end
		end
		#mail (:to => 'tsai.stephen@gmail.com',
	#				:subject => 'It works!' )
	end
end
