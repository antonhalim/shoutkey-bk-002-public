require 'pry'
class Link
  include Shoutable
  attr_reader :url
  def initialize(link)
    @url = link
  end

end
