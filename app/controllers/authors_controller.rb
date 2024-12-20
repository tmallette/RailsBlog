class AuthorsController < ApplicationController
    def show
      @user = User.find_by!(author: params[:author])
      @posts = @user.posts
    end
  end
  