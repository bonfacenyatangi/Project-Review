class ModifyProductsTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :name, :products_name
    add_column :products, :description, :string
    add_column :products, :brand, :string
  end
end
