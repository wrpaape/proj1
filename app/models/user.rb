class User < ActiveRecord::Base
  def get(params)
    @response_code = "200"
    @response = []
    @response << "-" * 50
    id, string, limit, offset = [params[:id], params.fetch(:first_name, "%"), params.fetch(:limit, - 1).to_i, params.fetch(:offset, 0).to_i]

    if id
      if user = User.find_by(id: id)
        get_all([user])
      else
        @response_code = "404"
        @response << "Not Found LOL"
        @response << "-" * 50
      end
    else
      user_matches = User.where("first_name LIKE ?", "#{string}%").limit(limit).offset(offset)
      if user_matches.size > 0
        get_all(user_matches)
      else
        @response_code = "404"
        @response << "Not Found LOL"
        @response << "-" * 50
      end
    end
    @response << "Response Code: #{@response_code}"
    @response << "-" * 50
    @response = @response.join("<p>")
    [@response, @response_code.to_i]
  end

  def get_all(users)
    users.each_with_index do |user|
      @response << "user" + user.id.to_s + ":"
      user.attributes.each do |k, v|
        @response << "   #{k} => #{v}"
      end
      @response << "-" * 50
    end
  end
end

