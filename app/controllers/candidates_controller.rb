class CandidatesController < ApplicationController

def index
    @candidate = Candidate.all
  end
  
  
 def new
   @candidate = Candidate.new
  end
  
 # def create
	#render plain: params[:candidates].inspect
    # params.permit!
    # @candidate = Candidate.new(params[:candidates])
    # @candidate.save
    # flash[:success ] = "Candidate added Successfull"
    # render 'index'
 # end 
 
 
def create
	 params.permit!
    @candidate = Candidate.new(params[:candidates])
  if @candidate.save
   # redirect_to action index, alert: "Watch it, mister!"
   redirect_to :controller => 'candidates', :action => 'index'
  else
    render "new"
  end
 end 

 def edit
  @candidate = Candidate.find(params[:id])
end 
   # private
  # def candidates
    # params.require(:candidate).permit(:first_name, last_name,:email, :birthday, :state, :age,:phone,:address,:gender)
  # end
  
  
end
