# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Post do
    before { @post = Post.new(body: "My name is kala", title: "Hello World") }
  subject {@post}

  it { should respond_to(:body) }
  it { should respond_to(:title) }

  describe "when body is not present" do
    before { @post.body = "" }
    it { should_not be_valid }
  end

  describe "when title is not present" do
    before { @post.title = "" }
    it { should_not be_valid }
  end

end
