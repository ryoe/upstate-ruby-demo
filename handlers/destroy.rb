module Lita
  module Handlers
    class Destroyer < Handler
      route(/destroy everything/, :destroy_it,
        command: true,
        restrict_to: [:authorized_destroyers]
        )

      def destroy_it response
        response.reply ":metal: I know that song!"
      end

      Lita.register_handler(self)
    end
  end
end
