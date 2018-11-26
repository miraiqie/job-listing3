class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :resumes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def admin?
    is_admin
  end

end
