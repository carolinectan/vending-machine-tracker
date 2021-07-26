class CreateVendingMachines < ActiveRecord::Migration[5.2]
  def change
    create_table :vending_machines do |t|
      t.references :snack, foreign_key: true
      t.references :machine, foreign_key: true

      t.timestamps
    end
  end
end