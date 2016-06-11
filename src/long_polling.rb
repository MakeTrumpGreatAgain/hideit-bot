require 'telegram/bot'
require_relative 'hideit_bot'
require_relative 'config'

BotConfig::require_tokens()

error_count = 0

Hideit_bot::HideItBot.start()

bot = Hideit_bot::HideItBot.new()

bot.listen do |message|
	bot.process_update message
	error_count = 0
end

