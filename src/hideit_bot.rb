require 'telegram/bot'
require_relative 'config'

module Hideit_bot

    class HideItBot
        def self.start()
        end

        def initialize()
            @bot = Telegram::Bot::Client.new(BotConfig::Telegram_token)
        end

        def listen(&block)
            @bot.listen &block
        end

        def process_update(message)
            case message
               when Telegram::Bot::Types::Message
                    puts "Hasduhasdh"
                    @bot.api.send_message(chat_id: message.chat.id, text: "Look, I'm a Trump and I going to make AMERICA GREAT AGAIN!")

            end
        end

        def set_webhook(url)
            @bot.api.set_webhook(url: url)
        end

        private

        def message_to_blocks(message)
            return  message.gsub(/[^\s]/i, "\u2588k")
        end
    end

end
