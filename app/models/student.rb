class Student < ApplicationRecord
  has_many :experiences
  has_many :capstones
end
