# class LayoutsController < ApplicationController
#   def create
#     user = User.find_by_email(params[:email])
#     if user && user.authenticate(params[:password])
#       session[:user_id] = user.id
#       redirect_to admin_url, notice: "Logged in!"
#     else
#       flash.now.alert = "Email or password is invalid."
#     end
#   end
# end
