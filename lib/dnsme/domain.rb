require 'dnsme/record'

# Simplifies access to domain data
class Dnsme::Domain
  def initialize(domain, opts)
    @api = DnsMadeEasy::Api.new(opts[:api_key], opts[:secret_key])
    @domain = domain
  end

  # return all records for the given domain
  def records
    records = @api.list_records @domain
    records.each do |r|
      record = Dnsme::Record.new r
      puts "#{record.name} -> #{record.value} (#{record.type})"
    end
  end
end
