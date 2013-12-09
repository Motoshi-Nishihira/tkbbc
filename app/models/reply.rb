# encoding: utf-8

class Reply < ActiveRecord::Base
  belongs_to :reply_to, class_name: "Post"
  belongs_to :reply_from, class_name: "Post"
end
