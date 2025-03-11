class Pokemon < ApplicationRecord
  belongs_to :user, optional: true
end
