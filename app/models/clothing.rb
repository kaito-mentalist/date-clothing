class Clothing < ApplicationRecord
    attachment :image

   validates :image, presence: true
    validates :reaction, presence: true
end
