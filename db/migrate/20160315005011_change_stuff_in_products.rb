class ChangeStuffInProducts < ActiveRecord::Migration
  def change
    # change_table :products do |t|
    #   t.rename :title, :name
    #   t.change :description, :text
    #   t.change :price, :decimal, precision: 8, scale: 2
    #   t.remove :isbn, :string
    # end
    rename_column :products, :title, :name
    change_column :products, :description, :text
    change_column :products, :price, :decimal, precision: 8, scale: 2
    remove_column :products, :isbn, :string
  end
end
