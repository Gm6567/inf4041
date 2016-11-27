class Episode < ActiveRecord::Base
has_many :castings
has_many :films , through: :castings

end
