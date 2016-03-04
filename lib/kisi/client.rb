require "kisi/client/version"
require 'httparty'

module Kisi
  class Client
    include HTTParty
    base_uri 'https://api.getkisi.com'
    attr_reader :token

    def initialize(token)
      @token = token
    end

    def get_doors
      self.class.get("/locks/index_with_token.json?limit=10&offset=0&token=#{token}")
    end

    def unlock_door(door)
      self.class.post(
        "/locks/#{door["id"]}/access_with_token.json?token=#{token}",
        { body: { lock: door } }
      )
    end
  end
end
