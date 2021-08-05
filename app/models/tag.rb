class Tag < ApplicationRecord
  belongs_to :gossip, optional: true

  validates :title,
    presence: true,
    length: { minimum: 3 }
end
