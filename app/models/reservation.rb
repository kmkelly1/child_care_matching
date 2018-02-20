class Reservation < ApplicationRecord
  # Direct associations

  belongs_to :available_hours,
             :class_name => "AvailableHour"

  belongs_to :childcare_hours,
             :class_name => "ChildcareHour"

  # Indirect associations

  # Validations

end
