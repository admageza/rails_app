class Post < ApplicationRecord
    validates :text, presence: true, length:{ in: 1..140 }
end
