class Child < ApplicationRecord
  # Direct associations

  has_many   :childcare_hours,
             :dependent => :destroy

  belongs_to :guardian,
             :class_name => "Parent"

  # Indirect associations

  # Validations

end
