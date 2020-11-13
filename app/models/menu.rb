class Menu < ApplicationRecord
  belongs_to :user
  belongs_to :room
  with_options presence: true do
    validates :name
    validates :item
    validates :cook
    validates :user_id
    validates :room_id
  end
end
