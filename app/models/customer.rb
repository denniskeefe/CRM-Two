class Customer < ActiveRecord::Base
	belongs_to :user
  attr_accessible :address_city, :address_state, :address_state, :address_street, :email, :id, :name_company, :name_first, :name_last, :phone, :postal_code, :image
  mount_uploader :image, ImageUploader
  attr_accessible :image

end


