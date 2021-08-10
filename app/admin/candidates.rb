ActiveAdmin.register Candidate do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :first_name, :second_name, :email, :number, :expirience_years, :biography, :vacancy_id, :status, :user_id, :gender

  # or
  #
  # permit_params do
  #   permitted = [:first_name, :second_name, :email, :number, :expirience_years, :biography, :vacancy_id, :status, :user_id, :gender]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
