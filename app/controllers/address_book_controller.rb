class AddressBookController < ApplicationController
  def index
  end

  def new
    @address_book = AddressBook.new
  end

  def show
    @address_book = AddressBook.findby(id: params[:id])
  end

  def create
    address_book = Article.new(address_book_params)
    if address_book.save
      redirect_to root
    else
      render 'new'
    end
  end

  private

  def address_book_params
    params.require(:address_book).permit(:name)
  end
end
