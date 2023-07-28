class ContactsController < ApplicationController
  before_action :set_apartment_admin, only: [:create]

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save!
      ContactMailer.example(@contact, @apartment).deliver
      redirect_to apartments_path, notice: 'Contact created successfully.'
    else
      render :new
    end
  end

  private

  def set_apartment_admin
    @apartment = Apartment.find(params[:apartment_id])
    @admin = @apartment.admin
  end

  def contact_params
    params.require(:contact).permit(:name, :phone, :email, :message)
  end
end
