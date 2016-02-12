module Tunefind
  class Show < Base
    def self.search(offset: nil, updated: nil)
      build_collection(get("show?offset=#{offset}&updated=#{updated}")['shows'])
    end

    def self.find(id)
      build_object(get("show/#{id}"))
    end
  end
end
