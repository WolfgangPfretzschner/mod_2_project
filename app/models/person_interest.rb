class PersonInterest < ApplicationRecord
  belongs_to :person
  belongs_to :interest
end
