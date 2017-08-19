class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      # call sidekiq job to find party membership
      redirect_to root
    else
      render 'new'
    end
  end

  def update
  end

  private

  def address_book_params
    params.require(:user).permit(
      :first_name, :last_name, :email, :phone_number, :address_book_id
    )
  end
end
