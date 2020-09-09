class HelpfulMessage < ApplicationRecord
  belongs_to :user
  belongs_to :message
end
