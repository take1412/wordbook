class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :wordlists
  has_many :words
  has_many :favorite, dependent: :destroy

  validates :nickname, presence: true

  def self.user_search(search)
    if search != ''
      User.where('nickname LIKE ?', "#{search}%")
    else
      User.all
    end
  end
end
