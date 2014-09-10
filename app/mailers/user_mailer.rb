class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def signup_confirmation(user)
    @user = user
    mail to: @user.email, subject: "Sign Up Confirmation"
  end

  def question_responded(user)
    @user = user
    mail to: @user.email, subject: "Question Responded To"
  end
end
