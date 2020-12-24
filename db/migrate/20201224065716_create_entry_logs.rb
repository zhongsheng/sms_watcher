class CreateEntryLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :platform

      t.timestamps
    end
    create_table :entry_logs do |t|
      t.string :phone
      t.text :detail
      t.references :account

      t.timestamps
    end
  end
end
