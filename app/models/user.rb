class User < ApplicationRecord
    
    has_secure_password

    has_many :user_groups

    def full_name
        "#{first_name} #{last_name}".strip
    end

end
