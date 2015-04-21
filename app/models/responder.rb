class Responder < ActiveRecord::Base
  validates :service_type, presence: true
  validates :on_duty, :assigned, inclusion: [true, false]

  scope :fire, -> { where(service_type: 'fire') }
  scope :police, -> { where(service_type: 'police') }
  scope :medical, -> { where(service_type: 'medical') }
  scope :are_available, -> { where(on_duty: true, assigned: false) }
  scope :are_on_duty, -> { where(on_duty: true) }
  scope :are_assigned, -> { where(assigned: true) }
end

# == Schema Information
#
# Table name: responders
#
#  id           :integer          not null, primary key
#  service_type :string
#  on_duty      :boolean          default(FALSE)
#  assigned     :boolean          default(FALSE)
#  created_at   :datetime
#  updated_at   :datetime
#
