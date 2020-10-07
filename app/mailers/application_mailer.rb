class ApplicationMailer < ActionMailer::Base
  default from: ENV["ENTRY_NAME"]
  layout 'mailer'
end
