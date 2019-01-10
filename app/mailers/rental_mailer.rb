class RentalMailer < ActionMailer::Base
  def email_reserve
    mail(
      :subject => 'Hello from Postmark',
      :to  => 'angelolimadias@gmail.com',
      :from => 'forimek@2mailnext.top',
      :html_body => '<strong>Hello</strong> dear Postmark user.',
      :track_opens => 'true')
  end
end


# RentalMailer.email_reserve(resers).deliver