require File.expand_path('../strategies/default_url_strategy', __FILE__)
require File.expand_path('../strategies/youtube_url_strategy', __FILE__)

module URLFormatter
  # Setting the strategies
  # TODO: Configurable strategies
  STRATEGIES = {
                :youtube => Strategies::YoutubeURLStrategy,
                :default => Strategies::DefaultURLStrategy
  }
  # Returns strategy based on source
  # which is a Symbol
  #
  # Example:
  #
  #   URLFormatter.strategy(:youtube)
  #   => Strategies::YoutubeURLStrategy
  def self.strategy(source)
    STRATEGIES[source]
  end

  # Namespace for URL Strategies
  module Strategies
  end
end
