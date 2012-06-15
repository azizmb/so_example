class CreateSelfServiceCustomers < ActiveRecord::Migration
  def self.up
    create_table :self_service_customers do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :self_service_customers
  end
end
