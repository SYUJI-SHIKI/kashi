require 'net/http'
require 'json'

class AccessLogApi
  class << self
    def search
      base_uri = 'https://www.sysbird.jp/webapi/'
      query_params = {
        'apikey' => 'guest',
        'max' => '1',
        'order' => 'r',
        'format' => 'json'
      }
      uri = URI(base_uri)
      uri.query = URI.encode_www_form(query_params)

      response = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |http|
        request = Net::HTTP::Get.new(uri)
        http.request(request)
      end
      if response.is_a?(Net::HTTPSuccess)
        data = JSON.parse(response.body, symbolize_names: true)
        item = data[:item]
        relevant_data = {
          name: item[:name],
          image: item[:image],
          price: item[:price]
        }

        relevant_data
      end
    end
  end
end