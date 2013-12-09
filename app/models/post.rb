# encoding: utf-8

class Post < ActiveRecord::Base
  belongs_to :board
  has_one :reply_to, foreign_key: "to_id", dependent: :destroy
  has_many :reply_from, foreign_key: "from_id", dependent: :destroy

  validates :body, length: {maximum: 1000}, presence: true, uniqueness: true
end
