class Map < ApplicationRecord
    has_many :xes
    has_many :ys
    has_many :user_graphs
    has_many :users, through: :user_graphs
end
