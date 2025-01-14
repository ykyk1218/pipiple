class DateSpot < ApplicationRecord
  #submitとのアソシエーション(多:1)
  belongs_to :submit,optional: true

  #categoryとのアソシエーション(1:1)
  has_one :category
  accepts_nested_attributes_for :category

  mount_uploader :image, AvatarUploader
end
