class CreateVisitors < ActiveRecord::Migration[6.0]
  def change
    create_table :visitors do |t|
      t.string :name
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end
