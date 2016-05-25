module Lita
  module Handlers
    class Stars < Handler
      route(/star[s|z] (\d*){1}/i, :star_rating, command: true,
        help: { "stars <num>" => "replies with your star rating" })

      def star_rating response
        starz = response.args.first.to_i

        if starz > 3
          response.reply "Wow! #{starz} stars!\nYou must be an internationally recognized expert!"
        else
          response.reply "You are not your star count! We <3 you!"
        end
      end

      Lita.register_handler(self)
    end
  end
end
