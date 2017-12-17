require 'controllers/application_controller'
require 'controllers/api_controller'

module MyApplication
  class Dispatcher
    def call(env)
      path_info = env['PATH_INFO']

      app = case path_info
        when %r{^/api} then ApiController.new
        else ApplicationController.new
      end

      app.call(env)
    end
  end
end
