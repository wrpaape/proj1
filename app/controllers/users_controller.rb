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
    user = User.new
    response, response_code = user.get(params)
    render text: response, status: response_code
  end

  def search
    # puts "*****"
    # puts params.inspect
    # puts "*****"
    # query_pairs = params[:queries].split("&")
    # param_k_v   = query_pairs.map { |query_pair| query_pair.split('=') }
    # param_k_v.each { |k, v| params.store(k.to_sym, v) }

  end
end


