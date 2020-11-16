class AddIndexToVisitorsEmail < ActiveRecord::Migration[6.0]
  def change
    add_index :visitors, :email, unique: true
  end
end
