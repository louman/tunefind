module Tunefind
  class Season < Base
    def self.find(show_id, season_number)
      build_object(get("show/#{show_id}/season-#{season_number}"))
    end
  end
end
