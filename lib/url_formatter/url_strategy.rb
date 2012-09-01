require File.expand_path('../strategies', __FILE__)

module URLFormatter
  STRATEGIES = { 
                :youtube => Strategies::YoutubeURLStrategy, 
                :default => Strategies::DefaultURLStrategy 
  }
  def self.strategy(source)
    STRATEGIES[source]
  end
end
