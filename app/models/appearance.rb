class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest
end
