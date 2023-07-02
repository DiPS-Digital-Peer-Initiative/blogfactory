if Rails.env != 'test'
     email_settings = Rails.application.credentials.mail
     ActionMailer::Base.smtp_settings = email_settings[Rails.env] unless email_settings[Rails.env].nil?
end