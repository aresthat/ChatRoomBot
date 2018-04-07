require 'telegram/bot'

class Main
  require 'net/http'
  token = 'YourToken'
  chatId = 'Channel Id'
  


  Telegram::Bot::Client.run(token, logger: Logger.new($stderr)) do |bot|
    bot.logger.info('[News] Bot Startato')
      #AntiSpam
    if message.text.include? "http://"
       bot.api.send_message(chat_id: message.chat.id, text: "<b>ALT!</b> Non puoi spammare <code>links</code>!
end
     bot.listen do |message|
       case message.text
       when '/start'
         bot.api.send_message(chat_id: message.chat.id, text: "<b>Ciao</b>, #{message.from.first_name}!, benvenuto in <code>ChatRoomBot</code>! \r\n" << "Manda un messaggio ed entra nel canale per chattare! \r\n" << "\r\n" << "Bot Developed by <code>@jaassok</code>", parse_mode: 'HTML')
       else
         bot.api.send_message(chat_id: message.chat.id, text: "<i>Inviato! Aspetta 3 secondi prima di inviare un altro messaggio!</i>", parse_mode: 'HTML')
         bot.api.send_message(chat_id: chatId, text: "<code>#{message.from.first_name}</code>:  <b>#{message.text}</b>", parse_mode: 'HTML')
         sleep(3)
       end
     end
   end
 end
