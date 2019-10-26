class User < ApplicationRecord
    
    has_secure_password

    has_one :user_group

    def full_name
        "#{first_name} #{last_name}".strip
    end

end
