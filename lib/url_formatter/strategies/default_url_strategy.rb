
module URLFormatter
  module Strategies
    # Default strategy to manage
    # paths. Returns the +path+ by
    # default
    class DefaultURLStrategy

      # The URL path
      attr_reader :path

      # Formats +path+ for a given +format+
      def self.url(path, format)
        new(path).send(format)
      end

      # Receives URL +path+
      def initialize(path)
        @path = path
      end

      # Returns +path+ by default
      def default
        path
      end
      
      # Returns default path when
      # receive unknown message
      def method_missing(*args)
        default
      end
    end
  end
end
