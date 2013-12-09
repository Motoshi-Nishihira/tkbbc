# encoding: utf-8

class Post < ActiveRecord::Base
  belongs_to :board
  has_one :relationship, foreign_key: "from_id", dependent: :destroy
  has_one :reply_to, through: :relationship, source: :to
  has_many :reverse_relationships, foreign_key: "to_id", class_name: "Relationship", dependent: :destroy
  has_many :reply_from, through: :reverse_relationships, source: :from

  validates :body, length: {maximum: 1000}, presence: true, uniqueness: true

  def reply!(reply_to_id)
    Relationship.create!(from_id: self.id, to_id: reply_to_id)
  end
end
