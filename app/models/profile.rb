class Profile < ApplicationRecord
  belongs_to :user
  # accepts_nested_attributes_for :user

  validates :first_name, :last_name, :year, :gender, :email, presence: true
end
