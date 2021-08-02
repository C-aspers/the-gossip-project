class Privatemessage < ApplicationRecord
  belongs_to :user, optional: true
end
