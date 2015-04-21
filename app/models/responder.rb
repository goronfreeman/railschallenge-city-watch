class Responder < ActiveRecord::Base
  
end

# == Schema Information
#
# Table name: responders
#
#  id           :integer          not null, primary key
#  service_type :string
#  on_duty?     :boolean          default(FALSE)
#  assigned?    :boolean          default(FALSE)
#  created_at   :datetime
#  updated_at   :datetime
#
