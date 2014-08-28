class Photo < ActiveRecord::Base
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment :picture,
  :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }

  belongs_to :user

  # attr_accessor :picture_file_name

end


