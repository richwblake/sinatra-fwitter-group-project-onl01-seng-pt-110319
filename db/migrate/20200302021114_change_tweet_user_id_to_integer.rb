class ChangeTweetUserIdToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :tweets, :user_id, :integer
  end
end
