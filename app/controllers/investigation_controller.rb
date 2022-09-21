class InvestigationController < ApplicationController
  def index
    conn = Faraday.new(url: 'https://api.fbi.gov')
    response = conn.get('/@wanted')
    json = JSON.parse(response.body, symbolize_names: true)
    @investigations = json[:items].map do |item|
      Investigation.new(item)
    end
    
  end
end
