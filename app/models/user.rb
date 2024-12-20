class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associations
  has_many :posts, dependent: :destroy

  # Validations
  validates :author, presence: true, uniqueness: true

  # Use the `author` field in URLs instead of the ID
  def to_param
    author.parameterize
  end
end
