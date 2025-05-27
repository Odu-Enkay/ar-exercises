class Store < ActiveRecord::Base
  has_many :employees

  # validations
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0 } 
  
  #custom validator
  validate :must_carry_mens_or_womens_apparel
  private

  def must_carry_mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:base, "Store must carry at least men's or women's apparel")
    end
  end
end
