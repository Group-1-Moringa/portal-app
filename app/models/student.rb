class Student < ApplicationRecord
    belongs_to :course
    belongs_to :instructor
  
    # Add additional attributes or validations 
    validates :name, presence: true
    validates :grades, presence: true
  
    def technical_mentor_name
      instructor.name if instructor
    end
  
    def technical_mentor_email
      instructor.email if instructor
    end
  end
  