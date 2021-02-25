class AddpriceTorents < ActiveRecord::Migration[5.2]
  def change
    add_column :rents, :price, :integer
  end
end
