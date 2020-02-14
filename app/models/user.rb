class User < ApplicationRecord
    has_secure_password
    has_many :user_graphs
    has_many :maps, through: :user_graphs
end