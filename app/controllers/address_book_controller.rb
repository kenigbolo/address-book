class AddressBookController < ApplicationController
  def index
    @address_books = AddressBook.all
  end

  def new
  end

  def show
    @address_book = AddressBook.find_by(id: params[:id])
    @address_book_entries = User.where(address_book_id: params[:id])
  end

  def create
    address_book = AddressBook.new(address_book_params)
    begin
      address_book.save
      flash[:success] = "Successfully created #{address_book_params[:name]}"
      redirect_to root_path
    rescue StandardError => e
      flash[:error] = e.message
    end
  end

  private

  def address_book_params
    params.require(:address_book).permit(:name)
  end
end
