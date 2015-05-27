class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'
  def booking_email(booking)
    @email = booking.email
    @name = booking.name
    @url  = 'http://example.com/login'
    mail(to: @email, subject: "Welcome to My #{booking.name}")
  end
end
