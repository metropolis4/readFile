mongoose = require 'mongoose'

userSchema = mongoose.Schema
  name: String
  summary: String
  profileUrl: String
  pictureUrl: String
  industry: String
  headline: String

module.exports = mongoose.model 'user', userSchema
