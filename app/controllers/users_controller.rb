class UsersController < ApplicationController
  def index # Methods are called Actions in Controllers

    all_users = User.all
    render text: print_users(all_users)
  end

  def show
    if user = User.find_by(id: params[:id])
      render text: print_users([user])
    else
      render text: 'User Not Found', status: 404
    end
  end

  private

  def print_users(users)
    string_users = []
    string_users << line
    users.each do |user|
      string_users << "user#{user.id.to_s}:"
      string_users << tab + "first name: #{user.first_name}"
      string_users << tab + "last name: #{user.last_name}"
      string_users << tab + "age: #{user.age}"
      string_users << line
    end
    string_users.join("<p>")
  end

  def tab
    "     "
  end

  def line
    "______________________\n"
  end
end


