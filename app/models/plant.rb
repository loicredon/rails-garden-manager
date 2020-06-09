class Plant < ApplicationRecord
  belongs_to :garden

  validates :name, presence: true, uniqueness: { scope: :garden_id }
  validates :image_url, presence: true, format: { with: /(https?:\/\/.*\.(?:png|jpg))/i, message: "please enter an image url" }
end
