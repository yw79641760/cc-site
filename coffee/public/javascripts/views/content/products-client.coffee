define (require, exprots, module) ->
  
  $ = require 'jquery'
  Backbone = require 'backbone'
  _ = require 'underscore'

  Util = require '../../common/util'
  common = require '../common'
  RES = require '../../common/res'

  tpl = require '../../../tpl/products-client.tpl'

  ThisView = Backbone.View.extend

    initialize: ->
      @common = common
      @render()

    render: ->
      self = @
      @$el.html _.template tpl
      @$el.addClass 'client-bg-1'
      @common.removeSubBody()
      @common.addAnimateText @$el
      @

  module.exports = ThisView
