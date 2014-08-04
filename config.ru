require 'grape'
require 'warden'
require 'mongoid'
require 'rack/protection'
use Rack::Protection
use Rack::Session::Cookie
Mongoid.load!("config/mongoid.yml")

module Dallce
  class API < Grape::API
    version 'v1', using: :path
    format :json

    get '/' do
      {id: 'sdfds'}
    end

  end
end

use Rack::Static,
    :urls => ["/images", "/js", "/css"],
    :root => "public"

run Rack::Cascade.new [Rack::File.new("public"), Dallce::API]
