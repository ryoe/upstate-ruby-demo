module Lita
  module Handlers
    class Nerdbeers < Handler
      route(/nerdbeers/i, :nerdbeers, command: true,
        help: { "nerdbeers" => "replies with current nerdbeers agenda" })

      def nerdbeers response
        http_response = http.get "http://nerdbeers.com/api/"
        agenda = MultiJson.load http_response.body

        message = []
        agenda['pairings'].each {|a| 
          message.push "Pairing ##{a['id']} => Topic: #{a['topic']} Beer: #{a['beer']}"
        }

        # puts "#{message.join '\n'}"
        response.reply message.join "\n"
      end

      Lita.register_handler(self)
    end
  end
end
