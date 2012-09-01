require File.expand_path('../url_strategy', __FILE__)

module URLFormatter
  # Find URL source
  class URLSourceResolver
    attr_accessor :path
    attr_reader :format

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
