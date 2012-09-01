
module URLFormatter
  module Strategies
    class DefaultURLStrategy
      attr_reader :path
      def self.url(path, format)
        new(path).send(format)
      end

      def initialize(path)
        @path = path
      end

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
