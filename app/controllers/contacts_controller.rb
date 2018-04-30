class ContactsController < ApplicationController

  def new
  end

  def create
    @contact = Contact.new params_contact
    if @contact.valid?
      @contact.save
    else
      render action: 'new'
    end
  end

  private

  def params_contact
    params.require(:contact).permit(:email, :message)
  end
end
