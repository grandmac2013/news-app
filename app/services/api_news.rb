class ApiNews
  require 'httparty'

  def initialize(message)
    @message = message
  end

  def fetch_news
    url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=14cc2923de0e4785a361c8febe4156f3"
    response = HTTParty.get url
    response.code == 200 ? response.parsed_response['articles'] : nil
  end
end