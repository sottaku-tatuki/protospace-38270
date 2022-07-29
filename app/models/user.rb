class User < ApplicationRecord
  with_options presence: true do
    validates :name      
    validates :profile   
    validates :occupation
    validates :position  
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :comments, dependent: :destroy
  has_many :prototypes, dependent: :destroy
  
end
