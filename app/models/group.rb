class Group < ApplicationRecord
    belongs_to :user_group, optional: true
end
