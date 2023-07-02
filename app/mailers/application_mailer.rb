class ApplicationMailer < ActionMailer::Base
  email_settings = Rails.application.credentials.mail
  default from: email_settings[Rails.env].user_name unless email_settings[Rails.env].nil?
  layout "mailer"
end
