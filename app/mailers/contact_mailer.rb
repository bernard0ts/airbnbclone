class ContactMailer < ApplicationMailer
  def example(contact, admin_email)
    @contact = contact
    mail(to: admin_email, subject: 'Test Email for Letter Opener')
  end
end
