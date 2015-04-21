# Create responders
responder_one = Responder.create!(service_type: 'fire', on_duty: true, assigned: true)
responder_two = Responder.create!(service_type: 'police', on_duty: true, assigned: false)
responder_three = Responder.create!(service_type: 'medical', on_duty: false, assigned: false)

# Create emergencies
emergency_one = Emergency.create!(fire_severity: 1, police_severity: 1, medical_severity: 1)
emergency_two = Emergency.create!(fire_severity: 2, police_severity: 2, medical_severity: 2)
emergency_three = Emergency.create!(fire_severity: 3, police_severity: 3, medical_severity: 3)
