class RegistrationsController < ApplicationController

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation,
      :name, :height, :happiness, :nausea, :tickets)
  end

end
