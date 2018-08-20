class TimelineController < ApplicationController

def index
  @user = User.find_by(username: "pitty")

end


end
