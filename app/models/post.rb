class Post < ApplicationRecord
    # presence is for autovalidation
    validates :title, presence: true, length: {minimum: 5}
end
