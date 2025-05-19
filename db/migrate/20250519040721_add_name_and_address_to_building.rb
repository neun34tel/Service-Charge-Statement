class AddNameAndAddressToBuilding < ActiveRecord::Migration[8.0]
  def change
    add_column :buildings, :name, :string
    add_column :buildings, :street, :string
    add_column :buildings, :house_number, :string
    add_column :buildings, :zip_code, :string
    add_column :buildings, :city, :string
    add_column :buildings, :state, :string
    add_column :buildings, :country, :string
  end
end
