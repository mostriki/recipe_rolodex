class Recipe < ActiveRecord::Base
  has_and_belongs_to_many(:ingredients)
  has_and_belongs_to_many(:categories)
  has_many(:instructions)
  before_save(:upcase_name)

  private

  def upcase_name
    self.title=(title().split.map(&:capitalize).join(' '))
  end
end
