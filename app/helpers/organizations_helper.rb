module OrganizationsHelper

  def organization_params
    params.require(:organization).permit(:company_name)
  end

end
