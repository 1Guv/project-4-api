class AddStartDateToPlate < ActiveRecord::Migration[5.0]
  def change
    add_column :plates, :start_date, :date
    add_column :plates, :status, :string
    add_column :plates, :reserve, :integer
    add_column :plates, :expiry_date, :date
  end
end
