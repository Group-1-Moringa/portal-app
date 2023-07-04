class User < ApplicationRecord
    # Include devise modules
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
    # Custom associations
    belongs_to :admin, optional: true
    belongs_to :instructor, optional: true
    belongs_to :student, optional: true
  end