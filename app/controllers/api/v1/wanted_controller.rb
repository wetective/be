class Api::V1::WantedController < ApplicationController

  def index
    @wanted_persons = WantedFacade.create_wanted_list
    binding.pry
    # if status != 'captured'
    # end
  end
  
  def show
    
  end
end
