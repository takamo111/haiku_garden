class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments
  mount_uploader :image, ImageUploader
  validates :thirdphrase, :secondphrase, :firstphrase, presence: true
  validates :thirdphrase, length: { maximum: 10 }
  validates :secondphrase, length: { maximum: 10 }
  validates :firstphrase, length: { maximum: 10 }
end
