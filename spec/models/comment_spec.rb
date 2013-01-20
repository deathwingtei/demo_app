# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Comment do
    before { @comment = Comment.new(body: "Hello there") }
  subject {@comment}

  it { should respond_to(:body) }

  describe "when body is not present" do
    before { @comment.body = "" }
    it { should_not be_valid  }
  end

end
