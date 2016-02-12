require 'forwardable'

module Tunefind
  class Base
    extend SingleForwardable

    def_delegator :client, :get

    def self.client
      @client ||= Tunefind::Client.new(ENV['TUNEFIND_USERNAME'], ENV['TUNEFIND_PASSWORD'])
    end

    def self.build_collection(collection)
      collection.map do |object|
        build_object(object)
      end
    end

    def self.build_object(object)
      Hashie::Mash.new(object)
    end
  end
end
