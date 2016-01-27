class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :state
      t.string :info
      t.string :type

      t.timestamps null: false
    end
  end
end
