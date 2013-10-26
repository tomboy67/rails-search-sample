class SearchProduct
  include ActiveModel::Model

  attr_accessor :name

  validates :name, presence: true

  def search
    self.valid? ? false : Product.where('name LIKE ?',  "%#{self.name}%")
  end
end
