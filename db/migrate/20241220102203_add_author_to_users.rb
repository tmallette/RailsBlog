class AddAuthorToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :author, :string
  end
end
