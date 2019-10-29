class UserGroup < ApplicationRecord
    has_one :group
    has_many :items
    has_many :users
end
