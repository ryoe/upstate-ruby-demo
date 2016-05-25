module Lita
  module Handlers
    class StarsHttp < Handler
      http.get "/stars/:num", :star_rating

      def star_rating request, response
        starz = request.env["router.params"][:num].to_i
        message = starz < 4 ? "You are not your star count! We <3 you!" :
           "Wow! #{starz} stars!\nYou must be an internationally recognized expert!"

        body = { starz: starz, message: message }

        response.headers["Content-Type"] = "application/json"
        response.write MultiJson.dump(body)
      end

      Lita.register_handler(self)
    end
  end
end
