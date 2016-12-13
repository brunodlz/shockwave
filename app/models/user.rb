class User < ApplicationRecord

  validates :full_name, :location, :password, :presence => true
  validates :password, :confirmation => true
  validates :bio, :presence => true, :minimum => 30, :allow_blank => false
  validates :email, :presence => true,
                    :format => { with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/ },
                    :uniqueness => true

end
