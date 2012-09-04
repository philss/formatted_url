require File.expand_path('../strategies', __FILE__)

module URLFormatter
  # Find URL source
  class URLSourceResolver
    # The URL path
    attr_accessor :path
    # Working format
    attr_reader :format

    # Receives the +path+ for URL
    # and +format+ to work with
    def initialize(path, format = :default)
      @path = path
      @format = format
    end

    # Defines url source
    def source
      STRATEGIES.each_key do |key|
        if clean_url.include? key.to_s
          return key
        end
      end
      return :default
    end

    # Returns the final formatted URL
    def url
      STRATEGIES[source].url(path, format)
    end

    private

    # URL without "dot"
    def clean_url
      @path.gsub('.','')
    end
  end
end
