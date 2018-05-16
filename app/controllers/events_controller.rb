class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    if logged_in?
      @user = User.find_by(name: session[:user_name])
      @user.events.create(name: params[:event][:name])
      redirect_to @user

    else
      flash.now[:error] = "You're not logged in so you can't create events"
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.all
  end
end
