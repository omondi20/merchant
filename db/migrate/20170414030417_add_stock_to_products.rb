class AddStockToProducts < ActiveRecord::Migration[5.0]
  add_column :products, :stock, :integer, default: 0
  def change
  end

end
