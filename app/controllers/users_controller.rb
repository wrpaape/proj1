class UsersController < ApplicationController

  def query
    user_matches = User.new
    response, response_code = user_matches.get(params)
    render_response(response,response_code)
  end

  def create
    response = []
    response_code = 200
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
    response = response.join("<p>")
    render_response(response,response_code)
  end

  def delete
    if user = User.find_by(id: params[:id].to_i)
      user.destroy
      response = []
      response_code = 200
      response << "-" * 50
      response << "user#{params[:id]} Succesfully Deleted"
      response << "-" * 50
      response << "Response Code: #{response_code}"
      response << "-" * 50
      response = response.join("<p>")
      render_response(response,response_code)
    else
      not_found
    end
  end

  def not_found
    response = []
    response_code = 404
    response << "-" * 50
    response << "Not Found LOL"
    response << "-" * 50
    response << "Response Code: #{response_code}"
    response << "-" * 50
    response = response.join("<p>")
    render_response(response,response_code)
  end

  private

  def render_response(response, response_code)
    render text: response, status: response_code
  end
end


