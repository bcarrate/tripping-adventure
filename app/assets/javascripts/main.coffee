require.config
	paths:
		jquery     : '//cdnjs.cloudflare.com/ajax/libs/jquery/1.10.2/jquery.min'
		underscore : '//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min'
		backbone   : '//cdnjs.cloudflare.com/ajax/libs/backbone.js/1.0.0/backbone-min'
		syphon     : '//cdnjs.cloudflare.com/ajax/libs/backbone.syphon/0.4.1/backbone.syphon.min'
		wreqr      : '//cdnjs.cloudflare.com/ajax/libs/backbone.wreqr/0.1.0/backbone.wreqr.min'
		marionette : '//cdnjs.cloudflare.com/ajax/libs/backbone.marionette/1.1.0-bundled/backbone.marionette.min'
		text       : '//cdnjs.cloudflare.com/ajax/libs/require-text/2.0.10/text.min'
		bootstrap  : '//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min'
		templatesPath : '../templates'
	shim:
		'underscore':
			exports: '_'
		'backbone':
			deps: ['jquery', 'underscore']
			exports: 'Backbone'
		'syphon':
			deps : ['backbone']
			exports : 'Backbone.Syphon'
		'wreqr':
			deps : ['backbone']
			exports : 'Backbone.Wreqr'
		'marionette':
			deps : ['backbone']
			exports : 'Marionette'

require ['app'], (App) ->
	'use strict'
	App.start()