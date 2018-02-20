class Child < ApplicationRecord
  # Direct associations

  belongs_to :guardian,
             :class_name => "Parent"

  # Indirect associations

  # Validations

end
