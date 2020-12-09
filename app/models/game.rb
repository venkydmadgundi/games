class Game < ApplicationRecord
  belongs_to :theme
  belongs_to :genre
  belongs_to :violence
end
