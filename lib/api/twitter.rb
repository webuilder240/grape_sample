module Twitter
  class API < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api
    get :hello do
      { hello: "world" }
    end
  end
end