class AddClientsRefToSales < ActiveRecord::Migration
  def change
    add_reference :sales, :client, index: true, foreign_key: true
  end
end
