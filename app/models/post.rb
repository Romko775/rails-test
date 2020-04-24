class Post < ApplicationRecord
    has_many :comments
    # presence is for autovalidation
    validates :title, presence: true, length: {minimum: 5}
end
