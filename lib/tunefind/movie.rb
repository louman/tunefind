module Tunefind
  class Movie < Base
    def self.search(offset: nil, updated: nil)
      build_collection(get("movie?offset=#{offset}&updated=#{updated}")['movies'])
    end

    def self.find(id)
      build_object(get("movie/#{id}"))
    end
  end
end
