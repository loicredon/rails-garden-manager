class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true, format: { with: /(https?:\/\/.*\.(?:png|jpg))/i, message: "please enter an image url" }
end
