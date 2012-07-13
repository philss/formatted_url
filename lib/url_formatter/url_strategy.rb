require File.expand_path('../strategies/default_url_strategy', __FILE__)
require File.expand_path('../strategies/youtube_url_strategy', __FILE__)

module URLStrategy
  STRATEGIES = { :youtube => YoutubeURLStrategy, :default => DefaultURLStrategy }
  def self.strategy(source)
    STRATEGIES[source]
  end
end
