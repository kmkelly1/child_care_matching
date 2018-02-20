class AvailableHour < ApplicationRecord
  # Direct associations

  has_one    :reservation,
             :foreign_key => "available_hours",
             :dependent => :destroy

  belongs_to :provider

  # Indirect associations

  # Validations

end
