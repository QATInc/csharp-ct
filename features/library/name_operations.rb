###########################################
#  This class is used in the verification of name test examples
# Author : Nicholas Blantz, Scott Miller
# Date Created  : 05/31/2018
# Last Modified : 06/07/2018
# Module : APITemplate
###########################################

class NameOperations
  def initialize(assertion)
    @assertion = assertion
  end
  
  # Retreives a response from a specified API
  def get_response(name)
    url = "http://jsonplaceholder.typicode.com/users?name=" + name
    uri = URI.parse(url)
    request = Net::HTTP::Get.new(uri)
    request_options = {}
    response = Net::HTTP.start(uri.hostname, uri.port, request_options) do |http|
      response = http.request(request)
    end
  end
  
  # Validates that the response is populated
  def assert_valid_name(response)
    expect(response.code).to eq("200")
    parsed_response = JSON.parse(response.body)
    expect(parsed_response[0]["id"].to_s).not_to eq(nil)
  end
  
  # Validates that the response is not populated
  def assert_invalid_name(response)
    expect(response.code).to eq("200")
    parsed_response = JSON.parse(response.body)
    expect(parsed_response[0]["id"].to_s).to eq(nil)
  end
end
