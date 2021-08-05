class Gossip < ApplicationRecord
  
  validates :title,
    presence: true,
    length: { minimum: 1 }
  
  validates :title,
    presence: true,
    length: { maximum: 14 }

    validates :content,
    presence: true


  belongs_to :user, optional: true
  has_many :tags



end
