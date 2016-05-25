module Lita
  module Handlers
    class Ping < Handler
      route(/ping/, :pong, 
        help: { "ping" => "replies back with PONG" })

      def pong response
        response.reply "PONG"
      end

      Lita.register_handler(self)
    end
  end
end
