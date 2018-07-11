class Interest < ApplicationRecord
  has_many :person_interests
  has_many :people, through: :person_interests

end
