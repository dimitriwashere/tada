class User < ActiveRecord::Base
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods

  has_many :nothings
  has_many :somethings, through: :nothings

  has_secure_password

  # validate_presence_of :username, :email, :password

end
