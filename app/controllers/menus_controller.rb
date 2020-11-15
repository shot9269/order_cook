class MenusController < ApplicationController
  def index
    @room = Room.find(params[:room_id])
    @menus = Menu.where(room_id:4 )
  end

  def new
    @menu = Menu.new
  end

  def create
    
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to room_menus_path
    else
      render :new
    end
  end

  private
  def menu_params
    params.require(:menu).permit(:name,:item,:cook).merge(user_id: current_user.id,room_id: params[:room_id])
  end

end
