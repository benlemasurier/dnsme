require 'dnsme/version'
require 'dnsmadeeasy/api'

require 'pp'

# A cli interface to 'DNS Made Easy'
module Dnsme
  # Simplifies access to record data
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

  # Routes CLI requests to the appropriate plugin
  class Request
    def initialize(api_key, secret_key)
      @api = DnsMadeEasy::Api.new(api_key, secret_key)
    end

    # return all domains
    def domains
      @api.list_domains
    end

    # return all records for the given domain
    def records(domain)
      records = @api.list_records domain
      records.each do |r|
        foo = Dnsme::Record.new r
        puts "#{foo.name} -> #{foo.value} (#{foo.type})"
      end
    end
  end
end
