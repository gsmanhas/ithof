class PlainpageController < ApplicationController

  def index
    flash[:success ] = "Welcome ! Login Successfull"
    #other alternatives are
    # flash[:warn ] = "Israel don't quite like warnings"
    #flash[:danger ] = "Naomi let the dog out!"
  end
	if cookies.has_key?(:unique_hit_key)
    hit = Hit.find(cookies[:unique_hit_key])
    hit.count = hit.count.to_i+1
    hit.save
  else
    cookies[:unique_hit_key] = {
      :value => Hit.create(count: 1).id,
      :expires => 1.year.from_now,
      :domain => 'warm-refuge-51314.herokuapp.com'
    }
  end
end
