class Post < ActiveRecord::Base
	include PublicActivity::Model
  tracked owner: ->(controller, model) { controller.current_user }
  
  belongs_to :user

  has_many :comments
end
