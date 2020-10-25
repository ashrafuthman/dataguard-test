class EmployeesController < ApplicationController

  def new
   @employee = Employee.new
   @group = Group.find(params[:group_id])
   @teams = Team.all

  end

  def create

    @employee = Employee.new(employees_params)
    @group = Group.find(params[:group_id])
    @employee.group = @group
     if @employee.save
      redirect_to group_path(@group)
    else
      render :new
    end

  end

  def destroy
    @employee = Employee.find(params[:id])
    @group = Group.find(params[:group_id])
    @employee.destroy
    redirect_to group_path(@group)
  end

  private

  def employees_params
    params.require(:employee).permit(:description, :team_id, :group_id)
  end
end
