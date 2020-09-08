class Message < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :generation
  belongs_to_active_hash :genre
  belongs_to_active_hash :body_parts
  belongs_to_active_hash :category

  with_options presence: true do
    validates :content
    validates :generation_id, numericality: { other_than: 1 }
    validates :genre_id, numericality: { other_than: 1 }
    validates :body_parts_id, numericality: { other_than: 1 }
    validates :category_id, numericality: { other_than: 1 }
  end

end
