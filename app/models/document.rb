class Document < ApplicationRecord
  validates :name, presence: true
  validates :text, presence: true

  mount_uploader :photo, PhotoUploader

end
