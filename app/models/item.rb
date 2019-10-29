class Item < ApplicationRecord
    belongs_to :user_group, optional: true
    has_one :user
end
