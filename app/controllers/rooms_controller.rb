class RoomsController < ApplicationController

  before_action :authenticate_user!, only: :new
  def about
  end

  def index
    @room = Room.find(current_user.id) if user_signed_in?
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  def serach
    @rooms = Room.all
  end
  
  def join
    @room = Room.new(name: params[:name], user_id: current_user.id)
    if @room.save
      redirect_to root_path
    else
      render :serach
    end
  end

  private
  def room_params
    params.require(:room).permit(:name).merge(user_id: current_user.id)
  end
end
