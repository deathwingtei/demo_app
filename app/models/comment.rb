# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  attr_accessible :body
   belongs_to :post #relation of model post (1)
   belongs_to :user #relation of model user (1)
    validates :body, presence: true
end
