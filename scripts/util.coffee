# Description
#   Utilities
#
# Author:
#   anishathalye

module.exports = (robot) ->

  robot.respond /restart/i, (res) ->
    res.send 'restarting...'
    setTimeout () ->
      process.exit 0
    , 500 # give process some time to send the message

  # fix bug (?) with slack adapter
  # taken from github.com/techx/hackmit-hackbot
  if robot.adapterName is 'slack'
    robot.logger.info 'adapter is slack: will terminate on client close'
    robot.adapter.client.on 'close', () ->
      process.exit 1
