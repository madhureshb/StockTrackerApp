class Stock < ApplicationRecord

	def self.new_lookup(ticker_symbol)
		client = IEX::Api::Client.new(publishable_token: 'Tpk_b2beb2b3f0c04b66a0a88014b3c95f78',
  										endpoint: 'https://sandbox				.iexapis.com/v1')
		client.price(ticker_symbol)
	end
end
