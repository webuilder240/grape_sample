module API
  class Base < Grape::API
    prefix 'api'
    version 'v1', using: :path
    format :json
    formatter :json, Grape::Formatter::Jbuilder

    mount Post_API
  end
end
