class CandidatesController < ApplicationController

def index
    @candidate = Candidate.all
  end
  
  
 def new
   @candidate = Candidate.new
  end
 def create
   #render plain: params[:candidates].inspect
    params.permit!
    @candidate = Candidate.new(params[:candidates])
    @candidate.save
    flash[:success ] = "Candidate added Successfull"

 end 

 def edit
  @candidate = Candidate.find(params[:id])
end 
   # private
  # def candidates
    # params.require(:candidate).permit(:first_name, last_name,:email, :birthday, :state, :age,:phone,:address,:gender)
  # end
  
  
end
