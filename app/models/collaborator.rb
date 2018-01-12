class Collaborator < ApplicationRecord
  belongs_to :profile
  belongs_to :document
end
