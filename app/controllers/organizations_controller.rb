class OrganizationsController < ApplicationController
include OrganizationsHelper

  def index
    @organizations = Organization.all
  end

  def show
    @organization = Organization.find(params[:id])
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    @organization.save

    flash.notice = "Organization '#{@organization.company_name}' was created!"

    redirect_to organization_path(@organization)
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy

    flash.notice = "Organization '#{@organization.company_name}' was deleted!"

    redirect_to action: "index"
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def update
    @organization = Organization.find(params[:id])
    @organization.update(organization_params)

    flash.notice = "Organization '#{@organization.company_name}' Updated!"

    redirect_to organization_path(@organization)
  end
end
