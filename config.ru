# encoding: utf-8
require 'rubygems'
require 'bundler/setup'
require 'rack/protection'
require 'rack/contrib/try_static'
require ::File.join( ::File.dirname(__FILE__), 'app.rb' )

use Rack::Session::Cookie
use Rack::Protection
use Rack::TryStatic,
  root: ::File.join( ::File.dirname(__FILE__), 'public' ),
  urls: %w[/], try: ['.html', 'index.html', '/index.html']

run Dallce::API
