class UserMailer < ApplicationMailer
  def welcome_email(order)
      @order = order
      @email = order.email
      @id = order.id
    mail(to: @email, subject: order[:id])
  end
end
