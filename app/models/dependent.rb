class Dependent < ActiveRecord::Base
  # Validates first name and should not be blank
  validates :first_name, presence: true
  # Validates first name and should not be blank
  validates :last_name, presence: true
  belongs_to :user
end
