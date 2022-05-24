class GroupsController < ApplicationController
  def index
    @current_user = current_user
    @groups = current_user.groups
  end

  def new
    @current_user = current_user
    @group = Group.new
  end

  def create; end

  def show; end
end
