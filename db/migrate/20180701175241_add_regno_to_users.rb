class AddRegnoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :regno, :string
  end
end
