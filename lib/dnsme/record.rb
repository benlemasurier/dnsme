require 'dnsmadeeasy/api'

# Simplifies access to record data
module Dnsme
  class Record
    def initialize(record)
      @record = record
    end

    def id
      @record[:id]
    end

    def type
      @record[:type]
    end

    def name
      @record[:name]
    end

    def ttl
      @record[:ttl]
    end

    def data
      @record[:data]
    end
    alias_method :value, :data
  end
end
