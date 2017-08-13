class Photo < ApplicationRecord
    belongs_to :user# :required => false (If we don't want this to be validated)
    has_many :comments
    has_many :likes
    
    has_many :fans, :through => :likes, :source => :user
    
    validates :user_id, :presence => true
end
