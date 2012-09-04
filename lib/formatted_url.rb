require File.expand_path('../formatted_url/url_source_resolver', __FILE__)

# FormattedURL provides an easy way
# to catch URL in differents formats
# Working with Youtube URLs, you can get the
# short, embed and default format
module FormattedURL
  # Format url acording to it's source
  #
  ## Examples:
  #
  #   FormattedURL.url("http://www.youtube.com/watch?v=RchTlF4aKGs", :embed)
  #   => "http://youtube.com/embed/RchTlF4aKGs"
  def self.url(path, format = :default)
    URLSourceResolver.new(path, format).url
  end
end
