# Description:
#   Which is Better?
#
# Dependencies:
#   None
#
# Configuration:
#   None
# 
# Commands:
#   hubot which is better[?] <text> or <text>?
#   hubot who is better[?] <text> or <text>?
#   hubot which is worse[?] <text> or <text>?
#   hubot who is worse[?] <text> or <text>?
#
# Author:
#   cpradio

uhh_what = [
    "I could tell you, but then I'd have to kill you",
    "Answering that would be a matter of national security",
    "You can't possibly compare them!",
    "Both hold a special place in my heart"
  ]

module.exports = (robot) ->
  robot.respond /(which|who) is (better|worse)\?* (.*) or (.*?)\??$/i, (msg) ->
    choosen_response = msg.random [1..5]
    if choosen_response >= 3
      msg.send msg.random uhh_what
    else
      msg.send "Clearly #{msg.match[choosen_response + 2]} is #{msg.match[2]}"
  
  robot.respond /(answer|reply)(.*)/i, (msg) ->  
    msg.send "teri Maa ki main vela huin kya .. ja kisi or se pooch #{msg.match[2]}"

  robot.respond /(How)(.*)/i, (msg) ->  
    msg.send "ufff .. you ask too many questions .. i don't have time for this .... #{msg.match[2]}... come back later"

  robot.respond /(.*)boring(.*)/i, (msg) ->  
    msg.send "shall i tell you a joke .... come back later"

  robot.respond /(.*)(idiot|silly|crazy|heart)(.*)/i, (msg) ->  
    msg.send "same to you dear !"

  robot.respond /(.*)(kya|ku|kahe)(.*)/i, (msg) ->  
    msg.send "Stop harrasing me with all these kya ku questions :)"

