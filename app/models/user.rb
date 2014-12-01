class User < ActiveRecord::Base
    has_secure_password
    has_many :hifives

    def fullname
      "Mr"
    end

end
