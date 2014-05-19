class Box < ActiveRecord::Base
  has_many :items

  accepts_nested_attributes_for :items, allow_destroy: true, reject_if: :all_blank
end
