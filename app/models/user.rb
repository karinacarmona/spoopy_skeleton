class User < ActiveRecord::Base
  # Remember to create a migration!
  has_secure_password

  has_many :comments
  has_many :submissions, class_name: "Post"
end
