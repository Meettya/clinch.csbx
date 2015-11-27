[![Dependency Status](https://gemnasium.com/Meettya/clinch.csbx.svg)](https://gemnasium.com/Meettya/clinch.csbx)
[![Build Status](https://travis-ci.org/Meettya/clinch.csbx.svg?branch=react_0.14_beta)](https://travis-ci.org/Meettya/clinch.csbx)

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

This is v0.14.1 React version with Babel transformer for jsx-part of ```csbx``` file.

## .csbx example

    module.exports = class HelloMessage extends React.Component

      render: ->
        `<div className="message">
          <p>Hello {this.props.name}!!!</p>
        </div>`

Or see ./test/fixtures directory

## Why .csbx ?

Sadly while combining the best of two worlds - CoffeeScript and jsx React implemented by "the place" - using a trick with the backticks, which allow you to insert in CoffeScript structure, they are not processed. This is the reason for such an extension of the files is selected - "Coffee Script with Backticks eXt" - `.csbx`

As soon as the normal method is to combine both tools - I'll do it as soon as possible, most likely with the file extension will be `.csx`

