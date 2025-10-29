class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, :profile, :occupation, :position, presence: true

  has_many :prototypes, dependent: :destroy
  has_many :comments, dependent: :destroy
end
