class UsersController < ApplicationController
  def show # Methods are called Actions in Controllers
    if params[:first_name] || params[:last_name] || params[:age]
      user_matches = User.new
      response, response_code = user_matches.get(params)
      render text: response, status: response_code
    else
      all_users = User.new
      response, response_code = all_users.get(params)
      render text: response, status: response_code
    end
  end

  def index
    if params[:id] == "create"
      params[:method] = params[:id]
      params.delete(:id)
      return method
    end
    user = User.new
    response, response_code = user.get(params)
    render text: response, status: response_code
  end

  def method
    response = []
    response_code = 200
    method = params[:method]
    case method
    when "delete"
      if user = User.find_by(id: params[:id].to_i)
        user.destroy
        response << "-" * 50
        response << "user#{params[:id]} Succesfully Deleted"
        response << "-" * 50
        response << "Response Code: #{response_code}"
        response << "-" * 50
      else
        response_code = 404
        response << "-" * 50
        response << "Not Found LOL"
        response << "-" * 50
        response << "Response Code: #{response_code}"
        response << "-" * 50
      end
    when "create"
      if existing_user = User.find_by(first_name: params[:first_name], last_name: params[:last_name], age: params[:age].to_i)
        response_code = 500
        response << "-" * 50
        response << "user#{existing_user.id} Already Exists"
        response << "-" * 50
        response << "Response Code: #{response_code}"
        response << "-" * 50
      else
        User.create(first_name: params[:first_name], last_name: params[:last_name], age: params[:age].to_i)
        id = User.last.id
        response << "-" * 50
        response << "user#{id} Succesfully Created"
        response << "-" * 50
        response << "Response Code: #{response_code}"
        response << "-" * 50
      end
    else
      response_code = 404
      response << "-" * 50
      response << "Not Found LOL"
      response << "-" * 50
      response << "Response Code: #{response_code}"
      response << "-" * 50
    end
    response = response.join("<p>")
    render text: response, status: response_code
  end
end


