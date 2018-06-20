class User < ApplicationRecord
  has_one_time_password
  User.invite!(:email => "new_user@example.com", :name => "John Doe")
end
