class User < ApplicationRecord
    has_secure_password 

    # validates :email, presence: true #Ensure user creates account with email 

    validates :email, presence: true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/, message: "Must enter a valid email address to create account" }

end
