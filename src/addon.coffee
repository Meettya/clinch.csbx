###
This is separate React jsx-based on CoffeeScript with backticks for Clinch processor
###
clinch_coffee = require 'clinch.coffee'
clinch_jsx    = require 'clinch.jsx'

extension = '.csbx'

processor = (data, filename, cb) ->
  # at first parse coffee
  clinch_coffee.processor data, filename, (err, decaffeinated) ->
    return cb err if err?
    # than react
    clinch_jsx.processor decaffeinated, filename, (err, content) ->
      return cb err if err?
      cb null, content, yes


module.exports = { extension, processor }
