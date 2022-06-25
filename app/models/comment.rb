class Comment < ApplicationRecord
  belongs_to :user
  belomgs_to :tweet
end
