class Instruction < ActiveRecord::Base
  belongs_to_many(:recipes)
end
