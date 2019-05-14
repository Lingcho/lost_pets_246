class Pet < ApplicationRecord
  SPECIES = ['cat', 'dog', 'turtle', 'rabbit', 'unicorn', 'turkey']
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    Time.now.day - self.found_on.day
  end
end
