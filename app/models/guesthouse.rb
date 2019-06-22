class Guesthouse < ApplicationRecord
  has_one_attached :picture
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true
  validates :name   , presence: true

  def feed
    Guesthouse.where("user_id = ?", id)
  end
end
