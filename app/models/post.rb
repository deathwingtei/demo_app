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

class Post < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :comments #relation of model comments (many)
  belongs_to :user #relation of model user (1)
    validates :body, presence: true
    validates :title, presence: true
    validates :user_id, presence: true
end
