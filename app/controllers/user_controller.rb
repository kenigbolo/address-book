class UserController < ApplicationController
  before_action :retrieve_address_book

  def new
    #
  end

  def create
    user = User.new(user_params)
    user.address_book_id = @address_book.id
    begin
      flash[:success] = "Successfully added #{user.first_name}." if user.save
      # Sidekiq job to check use political party membership
      flash[:error] = 'AddressBook entries limit exceeded' if user.errors
    rescue StandardError => e
      flash[:error] = e.message
    end
    redirect_to address_book_path(@address_book)
  end

  def destroy
    user = User.find_by(id: params[:id])
    begin
      flash[:success] = 'User Successfully Deleted' if user.delete
    rescue StandardError => e
      flash[:error] = e.message
    end
    redirect_to address_book_path(@address_book)
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name, :last_name, :email, :phone_number, :id_code
    )
  end

  def retrieve_address_book
    @address_book = AddressBook.find_by(id: params[:address_book_id])
  end
end
