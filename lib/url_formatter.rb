require File.expand_path('../url_formatter/url_source_resolver', __FILE__)
require File.expand_path('../url_formatter/url_strategy', __FILE__)

module URLFormatter
  def self.url(path,format = :default)
    @source = URLSourceResolver.new(path).source
    @strategy = URLStrategy.strategy(@source)
    @strategy.url(path, format)
  end
end
