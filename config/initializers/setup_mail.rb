ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
	:port                 => 587,  
	:domain               => "example.com",  
	:user_name            => "tsai.stephen@gmail.com",  
	:password             => "spccln-)",  
	:authentication       => "plain",  
	:enable_starttls_auto => true  
}  
