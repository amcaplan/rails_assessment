class Post < ActiveRecord::Base
  has_many :comments
  validates :name, :content, presence: true
end
