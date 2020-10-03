class Recipe < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :reviews, dependent: :destroy
  attachment :image
  with_options presence: true do
    validates :title 
    validates :body
    # validates :image
  end
end
