class UserMailer < ApplicationMailer
  default from: 'PicLib <technical@PicLib.com>'
  def reset_password(user, url)
  	@user = user
  	@url = url
  	mail(to: @user.email, subject: 'Reset PicLib Password')
  end
end
