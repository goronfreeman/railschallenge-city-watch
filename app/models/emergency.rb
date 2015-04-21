class Emergency < ActiveRecord::Base
  
end

# == Schema Information
#
# Table name: emergencies
#
#  id               :integer          not null, primary key
#  fire_severity    :integer
#  police_severity  :integer
#  medical_severity :integer
#  created_at       :datetime
#  updated_at       :datetime
#
