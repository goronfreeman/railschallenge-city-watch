class EmergencyResponseScore < ActiveRecord::Base
  
end

# == Schema Information
#
# Table name: emergency_response_scores
#
#  id                :integer          not null, primary key
#  fire_requested    :integer
#  fire_provided     :integer
#  police_requested  :integer
#  police_provided   :integer
#  medical_requested :integer
#  medical_provided  :integer
#  created_at        :datetime
#  updated_at        :datetime
#
