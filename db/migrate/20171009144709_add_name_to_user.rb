class AddNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :role, :integer, default: 0
    add_column :users, :avatar, :string
    add_column :users, :IdentityNumber, :integer, uniqueness:true
    add_column :users, :phone, :integer
    add_column :users, :cellphone, :integer
    add_column :users, :address, :text
    add_column :users, :active, :boolean
  end
end
