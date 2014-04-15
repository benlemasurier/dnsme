require 'spec_helper'

describe Dnsme::Record do
  let(:mock_data) {{
    id: '123456789',
    name: 'test',
    type: 'CNAME',
    ttl: '900',
    data: 'example.com'
  }}

  let(:record) {
    Dnsme::Record.new mock_data
  }

  describe '.id' do
    it 'matches mock data' do
      expect(record.id).to equal(mock_data[:id])
    end
  end

  describe '.name' do
    it 'matches mock data' do
      expect(record.name).to equal(mock_data[:name])
    end
  end

  describe '.type' do
    it 'matches mock data' do
      expect(record.type).to equal(mock_data[:type])
    end
  end

  describe '.ttl' do
    it 'matches mock data' do
      expect(record.ttl).to equal(mock_data[:ttl])
    end
  end

  describe '.data' do
    it 'matches mock data' do
      expect(record.data).to equal(mock_data[:data])
    end
  end

  describe '.value' do
    it 'matches .data (alias)' do
      expect(record.value).to equal(record.data)
    end
  end
end
