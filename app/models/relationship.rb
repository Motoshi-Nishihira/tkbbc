# encoding: utf-8

class Relationship < ActiveRecord::Base
  belongs_to :to, class_name: "Post"
  belongs_to :from, class_name: "Post"
end
