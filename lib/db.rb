require "redis"

module Jido
  class DB
    STATUS_CONNECTED     = 0
    STATUS_NOT_CONNECTED = 1

    attr_accessor :status

    def initialize adapter, attrs
      @status = STATUS_NOT_CONNECTED;

      @adapter = adapter.new(attrs);
    end



    class Adapter
      def initialize attrs
        connect attrs
      end

      def connect attrs
        nil
      end
    end

    class RedisAdapter < Adapter

      def connect attrs
        @redis = (attrs != nil)? Redis.new(attrs) : Redis.new
      end

      def set

      end

      def get

      end
    end
  end
end
