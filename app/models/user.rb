#class User < ActiveRecord::Base
class User < ApplicationRecord
  has_secure_password

end
