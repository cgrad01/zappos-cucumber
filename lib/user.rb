class User
  attr_reader :gender, :category, :brand, :email, :color, :size

  def initialize(gender, category, brand, email, color, size)
    @gender = gender
    @category = category
    @brand = brand
    @email = email
    @color = color
    @size = size
  end
end