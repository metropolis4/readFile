express = require 'express'
bodyParser = require 'body-parser'
mongoose = require 'mongoose'
apiController = require './controllers/api.js'
indexController = require './controllers/index.js'

mongoose.connect 'mongodb://localhost/readFileApp'
app = express()
app.set 'view engine', 'jade'
app.set 'views', __dirname + '/views'
app.use express.static(__dirname + '/public')
app.use bodyParser.json()
app.use bodyParser.urlencoded(extended: false)

app.get '/', indexController.index
app.post '/test', apiController.test

server = app.listen 5150, ->
  console.log "Server listening on port #{server.address().port}"
