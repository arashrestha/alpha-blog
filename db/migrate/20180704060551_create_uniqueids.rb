class CreateUniqueids < ActiveRecord::Migration[5.2]
  def change
    create_table :uniqueids do |t|
      t.string :username
      t.string :uid

      t.timestamps
    end
  end
end
