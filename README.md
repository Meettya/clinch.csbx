[![Dependency Status](https://gemnasium.com/Meettya/clinch.csbx.svg)](https://gemnasium.com/Meettya/clinch.csbx)
[![Build Status](https://travis-ci.org/Meettya/clinch.csbx.svg?branch=react_0.13)](https://travis-ci.org/Meettya/clinch.csbx)

# clinch.csbx

This is external addon for [clinch](https://github.com/Meettya/clinch) - CommonJS to browser packer to support React ```jsx``` on CoffeeScript with backticks files.

## How to use

    Clinch = require 'clinch'
    clinch_csbx = require 'clinch.csbx'

    # create packer object
    packer = new Clinch runtime : on
    # add plugin (chainable)
    packer.addPlugin clinch_csbx

For more information see main module documentation.

## About React version

React grow fast and add new features and drop old one in every new releases, so ```clinch.csbx``` have some version for all minor React version.

## .csbx example

    module.exports = class HelloMessage extends React.Component

      render: ->
        `<div className="message">
          <p>Hello {this.props.name}!!!</p>
        </div>`

Or see ./test/fixtures directory
