class ContactMailer < ApplicationMailer
  def example(contact, apartment)
    @contact = contact
    @apartment = apartment
    mail(to: @apartment.admin.email, subject: 'Test Email for Letter Opener')
  end
end
