class Post < ApplicationRecord
  has_many :supports
  belongs_to :user
  has_many :supporters, :through => :supports, class_name: "User"
end
