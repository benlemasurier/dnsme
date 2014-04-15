require 'spec_helper'

describe Dnsme do
  let(:config) {
    {
      # sandbox api keys
      api_key: '7b0b1e6f-8dbc-4e42-a68e-bfd2602d0944',
      secret_key: '70fb1f61-0d1b-4146-a8e5-b8f3ac458586'
    }
  }
  describe '.domains' do
    it 'should return a list of domains' do
      pending
      # expect {
      #   Dnsme.domains(config)
      # }.to eq([])
    end
  end

  context 'with invalid credentials' do
    describe '.domains' do
      it 'should fail' do
        expect {
          Dnsme.domains(api_key: 'foo', secret_key: 'bar')
        }.to raise_error(DnsMadeEasy::AuthorizationFailedError)
      end
    end
  end
end
