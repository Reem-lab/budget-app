class GroupPurchase < ApplicationRecord
  belongs_to :groups
  belongs_to :purchases
end
