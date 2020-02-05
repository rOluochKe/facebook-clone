# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
  default_scope { order(created_at: :desc) }

  validates :content, presence: true, length: { minimum: 20 }
=======
  validates :content, presence: true,  length: {maximum: 500}  
>>>>>>> 19e38b9cd4832a0e46d2c13b6b77b5a505419706
end
