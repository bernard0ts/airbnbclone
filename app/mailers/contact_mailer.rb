class ContactMailer < ApplicationMailer
    def example(contact)
        @contact = contact
        mail(to: @admin.email, subject: 'Test Email for Letter Opener')
    end
end
