class CreateEmergencyResponseScores < ActiveRecord::Migration
  def change
    create_table :emergency_response_scores do |t|
      t.integer :fire_requested
      t.integer :fire_provided
      t.integer :police_requested
      t.integer :police_provided
      t.integer :medical_requested
      t.integer :medical_provided

      t.timestamps
    end
  end
end
