express = require 'express'

config = require('./config')[process.env.NODE_ENV or 'development']

app = express()

app.set 'port', process.env.PORT or 3000
app.set 'views', "#{__dirname}/views"
app.set 'view engine', 'jade'

app.use express.favicon()
app.use express.logger 'dev'
app.use express.bodyParser()
app.use express.methodOverride()
app.use app.router
app.use express.static "#{__dirname}/public"

app.configure 'development', () ->
  app.use express.errorHandler()

app.get '/', routes.index

http.createServer(app).listen app.get('port'), () ->
  console.log "Express server listening on port #{app.get 'port'}"