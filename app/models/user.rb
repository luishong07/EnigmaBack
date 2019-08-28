class User < ApplicationRecord
    has_many :user_messages
    has_many :messages, through: :user_messages
    


    has_secure_password

    def auth_token
        JWT.encode({ id: self.id }, 'latuya')#???????
    end

end
