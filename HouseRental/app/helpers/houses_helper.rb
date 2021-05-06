module HousesHelper
  def choose_new_or_edit
    if action_name == 'new'
      new_house_path
    else action_name == 'edit'
      edit_house_path
    end
  end
end
