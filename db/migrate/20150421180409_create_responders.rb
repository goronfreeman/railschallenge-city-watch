class CreateResponders < ActiveRecord::Migration
  def change
    create_table :responders do |t|
      t.string :service_type
      t.boolean :on_duty?, default: false
      t.boolean :assigned?, default: false

      t.timestamps
    end
  end
end
