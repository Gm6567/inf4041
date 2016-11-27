class Film < ActiveRecord::Base

has_many :castings
has_many :episodes , through: :castings

end
