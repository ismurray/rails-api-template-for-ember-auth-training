class AddNullConstraintToUserIdInLoots < ActiveRecord::Migration[5.1]
  def change
    change_column_null :loots, :user_id, false
  end
end
