class Business < ApplicationRecord
  has_many :reviews
  store_accessor :address, :street, :city, :state, :zip
  validates_presence_of :name, :telephone, :address
end