module Lita
  module Handlers
    class Gnip < Handler
      route(/gnip/, :gnop,
        command: true, # "respond"
        help: { "gnip" => "replies back with GNOP" })

      def gnop response
        response.reply "GNOP"
      end

      Lita.register_handler(self)
    end
  end
end
