class Crane < ActiveRecord::Base
  has_one :vehicle

  validates :name, uniqueness: true

  has_attached_file :idlable_pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :idlable_pic, :content_type => /\Aimage\/.*\Z/
end
