class User < ActiveRecord::Base
	acts_as_commontator

	#has_many :posts, dependent: :destroy
	#has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable


  #ROLES = {0 => :guest, 1 => :user, 2 => :moderator, 3 => :admin}
  # ROLES = {0 => :user, 1 => :customer, 2 => :admin}

  # attr_reader :role

  # def initialize(role_id = 0)
  #   @role = ROLES.has_key?(role_id.to_i) ? ROLES[role_id.to_i] : ROLES[0]
  # end

  # def role?(role_name)
  #   role == role_name
  # end

end
