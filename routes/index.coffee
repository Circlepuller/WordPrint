env = process.env.NODE_ENV or 'development'
config = require('../config')[env]

module.exports.index = (req, res) ->
  res.render index,
    env: env
    pkg: config.pkg
    app: config.app