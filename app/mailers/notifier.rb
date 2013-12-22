require 'mail'

class Notifier < ActionMailer::Base
  default from: 'noreply@example.com',
					return_path: 'noreply@example.com'

	def send_email(to, subject, body)
		mail(to: "#{to}",
				 subject: "#{subject}",
				 body: "#{body}")
	end
end
