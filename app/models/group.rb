class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :purchases, dependent: :destroy
  has_many :purchases, through: :group_purchases

  def total_purchases_group
    author.increment!(:total_purchases)
  end
end
