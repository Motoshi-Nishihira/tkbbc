# encoding: utf-8

require 'spec_helper'

describe Relationship do
  let(:to) { Post.create(body: "to") }
  let(:from) { Post.create(body: "from") }
  let(:relationship) { Relationship.create(to_id: to.id, from_id: from.id) }

  subject {relationship}

  it {should respond_to(:to)}
  it {should respond_to(:from)}

  its(:to) {should eq to}
  its(:from) {should eq from}
end
