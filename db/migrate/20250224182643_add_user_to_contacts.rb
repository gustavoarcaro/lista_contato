class AddUserToContacts < ActiveRecord::Migration[7.0]
  def change
    add_reference :contacts, :user, foreign_key: true, null: true
  end
end

