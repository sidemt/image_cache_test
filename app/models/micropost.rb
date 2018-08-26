class Micropost < ApplicationRecord
  default_scope -> { order(id: :asc) }
  mount_uploader :picture, PictureUploader
  validates :content, presence: true, length: { maximum: 140 }
  validate  :picture_size

  private
  
  # Validate the file size of the uploaded image
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
