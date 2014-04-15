require 'dnsme/version'
require 'dnsmadeeasy/api'

require 'pp'

# A cli interface to 'DNS Made Easy'
module Dnsme
  # returns all domains
  def self.domains(opts = {})
    @api = DnsMadeEasy::Api.new(opts[:api_key], opts[:secret_key])
    @api.list_domains
  end
end
