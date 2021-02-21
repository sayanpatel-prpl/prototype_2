class UserMailer < ActionMailer::Base
  include Devise::Mailers::Helpers

  default :from => "sayan@test.com"

  # Registrations controller takes confirmation_instructions
  def confirmation_instructions(record,token,opts={})
    @token = token
    devise_mail(record, :confirmation_instructions, opts)
  end

  def reset_password_instructions(record, token, opts={})
    @token = token
    devise_mail(record, :reset_password_instructions, opts)
  end
end