# Write your code here
require 'net/http'
require 'json'
require 'open-uri'

class GetRequester
    attr_reader :url

def initialize(url_string)
    @url = url_string
end

def get_response_body
    uri = URI.parse(self.url)
    response = Net::HTTP.get_response(uri)
    response.body
end

def parse_json
    programs = JSON.parse(self.get_response_body)
    programs
end

end 