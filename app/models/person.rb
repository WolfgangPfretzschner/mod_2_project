class Person < ApplicationRecord
  belongs_to :cohort
  has_many :person_interests
  has_many :interests, through: :person_interests

end
