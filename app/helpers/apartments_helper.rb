module ApartmentsHelper
  def choose_new_or_edit
    if action_name == "create"
      apartments_path
    elsif action_name == "edit"
      apartment_path
    end
  end
end
