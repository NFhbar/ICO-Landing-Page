class Devise::MailerPreview < ActionMailer::Preview
  # hit http://192.168.0.23:3000/rails/mailers/devise/mailer/confirmation_instructions
  def confirmation_instructions
    Devise::Mailer.confirmation_instructions(User.first, {})
  end

  # hit http://192.168.0.23:3000/rails/mailers/devise/mailer/password_change
  def password_change
    Devise::Mailer.password_change(User.first, {})
  end

  # hit http://192.168.0.23:3000/rails/mailers/devise/mailer/reset_password_instructions
  def reset_password_instructions
    Devise::Mailer.reset_password_instructions(User.first, {})
  end

  # hit http://192.168.0.23:3000//rails/mailers/devise/mailer/unlock_instructions
  def unlock_instructions
    Devise::Mailer.unlock_instructions(User.first, {})
  end
end
