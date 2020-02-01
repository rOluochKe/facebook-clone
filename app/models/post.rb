class Post < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "user_id"
  validates :title, presence: true,  length: {maximum: 50}
  validates :description, presence: true,  length: {maximum: 50} 
  
end
