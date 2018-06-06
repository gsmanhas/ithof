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
	 uploaded_io = params[:candidates][:avatar]
	 uniq_name = (0...10).map { (65 + rand(26)).chr }.join
	 time_footprint = Time.now.to_formatted_s(:number)
	 new_name = uniq_name+time_footprint
	 File.open(Rails.root.join('public', 'images', new_name), 'wb') do |file|
	 file.write(uploaded_io.read)
	 params[:candidates][:avatar] = new_name
	end
	#render plain: params[:candidates].inspect
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
