class Message < ApplicationRecord

  belongs_to :user

  default_scope { order(created_at: :desc)}

  #default - everytime messages are called from the database bring them in reverse order
end
