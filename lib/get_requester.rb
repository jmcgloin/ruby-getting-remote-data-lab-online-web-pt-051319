require 'open-uri'

class GetRequester
	def initialize(url)
	 @url = url
	end
	def get_response_body
		uri = URI.parse(@url)
		uri.open.string
	end
	def parse_json
		JSON.parse(get_response_body)
	end

end

# require 'open-uri'
# url = "https://learn-co-curriculum.github.io/json-site-example/"
# uri = URI.parse(url)
# uri.open.string