require File.expand_path('../url_formatter/url_source_resolver', __FILE__)
require File.expand_path('../url_formatter/url_strategy', __FILE__)

# URLFormatter provides an easy way
# to catch URL in differents formats
# Working with Youtube URLs, you can get the
# short, embed and default format
module URLFormatter
  def self.url(path, format = :default)
    URLSourceResolver.new(path, format).url
  end
end
