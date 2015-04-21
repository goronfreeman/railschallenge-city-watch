class Emergency < ActiveRecord::Base
  validates :fire_severity, :police_severity, :medical_severity, presence: true
  validates :fire_severity, :police_severity, :medical_severity, numericality: { only_integer: true }
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
