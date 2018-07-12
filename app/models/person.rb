class Person < ApplicationRecord
  belongs_to :cohort
  has_many :person_interests
  has_many :interests, through: :person_interests
  accepts_nested_attributes_for :interests

  def interests_attributes=(interest_attributes)
    interest_attributes.values.each do |interest_attributes|
      interest = Interest.find_or_create_by(interest_attributes)
      self.interests.build(name: interest.name)
    end
  end
end
