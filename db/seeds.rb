# Create responders
Responder.create!(service_type: 'fire', on_duty: true, assigned: true)
Responder.create!(service_type: 'police', on_duty: true, assigned: false)
Responder.create!(service_type: 'medical', on_duty: false, assigned: false)

# Create emergencies
Emergency.create!(fire_severity: 1, police_severity: 1, medical_severity: 1)
Emergency.create!(fire_severity: 2, police_severity: 2, medical_severity: 2)
Emergency.create!(fire_severity: 3, police_severity: 3, medical_severity: 3)
