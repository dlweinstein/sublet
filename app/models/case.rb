class Case < ApplicationRecord

# direct associations
  belongs_to :student, :class_name => "Student"
  has_many :favorites, :dependent => :destroy
  belongs_to :school

# indirect associations
has_many :fans, :through => :favorites, :source => :student


end
