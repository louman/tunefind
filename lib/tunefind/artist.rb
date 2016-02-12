module Tunefind
  class Artist < Base
    def self.search(offset: nil, updated: nil)
      build_collection(get("artist?offset=#{offset}&updated=#{updated}")['artists'])
    end

    def self.find(id)
      build_object(get("artist/#{id}"))
    end
  end
end
