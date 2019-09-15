class Review < ApplicationRecord
  belongs_to :business, foreign_key: :business_id, class_name: 'Business'
end