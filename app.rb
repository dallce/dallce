# encoding: utf-8
require 'grape'
require 'warden'
require 'mongoid'

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
