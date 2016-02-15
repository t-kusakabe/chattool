class Group < ActiveRecord::Base
  has_many :chats

  validates :group_name, presence: true
end
