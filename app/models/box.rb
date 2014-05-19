class Box < ActiveRecord::Base
  has_many :items

  accepts_nested_attributes_for :items, allow_destroy: true, reject_if: :all_blank

  attr_accessor :items_list

  before_save :split_items_list

  def items_as_list
    self.items.map(&:name).join(", ")
  end

  def split_items_list
    if items_list.present?
      self.items = []
      items_list.split(',').each do |item|
        self.items << Item.where(name: item.squish).first_or_create
      end
    end
  end

end
