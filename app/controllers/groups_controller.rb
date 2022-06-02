class GroupsController < ApplicationController
  def index
    @current_user = current_user
    @groups = current_user.groups
  end

  def new
    @current_user = current_user
    @group = Group.new
  end

  def create
    @group = current_user.groups.new(group_params)

    if @group.save
      redirect_to root_path, notice: 'Your category is created successfully 🎉'
    else
      flash[:alert] = 'Something went wrong, Try again!'
      render :new
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
