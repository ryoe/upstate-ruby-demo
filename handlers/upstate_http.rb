module Lita
  module Handlers
    class UpstateHttp
      extend Lita::Handler::HTTPRouter

      http.get "/upstate", :ruby

      def ruby request, response
        response.body << "Ruby"
      end

      Lita.register_handler(UpstateHttp)
    end
  end
end
