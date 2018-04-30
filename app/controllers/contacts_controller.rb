class ContactsController < ApplicationController

  def new
  end

  def create
    @contact = Contact.new params_contact
    @contact.save
  end

  private

  def params_contact
    params.require(:contact).permit(:email, :message)
  end
end


