require 'youtube_id'
require File.expand_path('../default_url_strategy', __FILE__)

module URLFormatter
  module Strategies
    # Youtube Strategy to work with embed
    # and short formats
    class YoutubeURLStrategy < DefaultURLStrategy

      # Short path from youtube
      def short
        "http://youtu.be/#{youtube_id}"
      end

      # Embed format should be
      # used only with iframes
      def embed
        "http://youtube.com/embed/#{youtube_id}"
      end

      private

      def youtube_id # :nodoc:
        YoutubeID.from(self.path)
      end
    end
  end
end
