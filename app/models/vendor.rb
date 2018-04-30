class Vendor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :confirmable , :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :event

  ROLES = %w[admin staff].freeze

  def admin?      
    self.role == "admin" 
   end 

  def staff?  
    self.role == "staff"   
  end

 

end
