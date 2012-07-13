# Find URL source
class URLSourceResolver
  attr_accessor :url

  def initialize(url)
    @url = url
  end

  # Defines url source
  def source
    if clean_url =~ /youtube/
      return :youtube
    else
      return :default
    end
  end

  private
  # URL without .
  def clean_url
    @url.gsub('.','')
  end
end
