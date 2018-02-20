class ChildcareHour < ApplicationRecord
  # Direct associations

  has_one    :reservation,
             :foreign_key => "childcare_hours",
             :dependent => :destroy

  belongs_to :child

  # Indirect associations

  # Validations

end
