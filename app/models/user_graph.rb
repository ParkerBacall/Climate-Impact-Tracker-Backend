class UserGraph < ApplicationRecord
  belongs_to :user
  belongs_to :map
end
