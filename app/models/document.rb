class Document < ApplicationRecord
  validates :name, presence: true
  validates :text, presence: true

end
