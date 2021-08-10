ActiveAdmin.register Vacancy do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :status, :opening_date, :closing_date, :position_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:status, :opening_date, :closing_date, :position_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
