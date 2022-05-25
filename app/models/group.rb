class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :group_purchases, dependent: :destroy
  has_many :purchases, through: :group_purchases

  has_one_attached :icon
  validates :name, presence: true
  validates :icon, presence: true

  after_destroy :total_purchases_group_delete

  def total_purchases_group_delete
    group.decrement!(:total_purchases, purchase.amount)
  end
end
