module Tunefind
  class Episode < Base
    def self.find(show_id, season_number, episode_id)
      build_object(get("show/#{show_id}/season-#{season_number}/#{episode_id}"))
    end
  end
end
