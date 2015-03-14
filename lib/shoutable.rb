require 'nokogiri'
require 'uri'
require 'restclient'

module Shoutable
  def shoutkey
    page = Nokogiri::HTML(RestClient.get(shoutkey_url))
    name = page.css('.hero-unit h1 a').text
  end

  def shoutkey_url
    urinated = URI.escape(self.url,":/.")
    shoutkey_url = "www.shoutkey.com/new?url=" + urinated
  end
end
