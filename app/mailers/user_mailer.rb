class UserMailer < ApplicationMailer
  default from: 'notifications@notes.com'

  def new_like_email(user)
    @email = user.email
    mail to: user.email, subject: "You have a new follower!"
  end

end