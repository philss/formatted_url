require File.expand_path('../url_formatter/url_source_resolver', __FILE__)

# URLFormatter provides an easy way
# to catch URL in differents formats
# Working with Youtube URLs, you can get the
# short, embed and default format
module URLFormatter
  # Format url acording to it's source
  #
  ## Examples:
  #
  #   URLFormatter.url("http://www.youtube.com/watch?v=RchTlF4aKGs", :embed)
  #   => "http://youtube.com/embed/RchTlF4aKGs"
  def self.url(path, format = :default)
    URLSourceResolver.new(path, format).url
  end
end
