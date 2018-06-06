class PlainpageController < ApplicationController
  layout "blank", only: [:index]
  def index
   # flash[:success ] = "Welcome ! Login Successfull"
    #other alternatives are
    # flash[:warn ] = "Israel don't quite like warnings"
    #flash[:danger ] = "Naomi let the dog out!"
	  @candidate = Candidate.all
	  
  end

end
