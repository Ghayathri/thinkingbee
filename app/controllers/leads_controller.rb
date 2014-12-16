class LeadsController < ApplicationController

  # Index Method
  def index
    @leads = Lead.all
  end

  # New Lead
  def new
    @lead = Lead.new
  end

  # Create Lead
  def create
    @lead = Lead.new(lead_param)
    if @lead.save
      redirect_to leads_path
    else
      render :new
    end
  end

  # Edit Lead
  def edit
    @lead = Lead.find(params[:id])
  end

  # Update Lead
  def update
    @lead = Lead.find(params[:id])
    if @lead.update(lead_param)
      redirect_to leads_path
    else
      render :edit
    end
  end

  # View Lead
  def show
    @lead = Lead.find(params[:id])
  end

  # Delete Lead
  def destroy
    @lead = Lead.find(params[:id])
    @lead.destroy
    redirect_to leads_path
  end

  private

  # Permit Params
  def lead_param
    params.require(:lead).permit(:name)
  end
end
