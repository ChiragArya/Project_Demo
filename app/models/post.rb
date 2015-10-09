class Post < ActiveRecord::Base
	acts_as_commontable

	#has_many :comments, dependent: :destroy
	#belongs_to :user
end
