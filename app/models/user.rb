class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
       :trackable, :rememberable, :validatable

  validates :name, uniqueness: true
  validates :name, presence: true

end
