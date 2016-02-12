class Chat < ActiveRecord::Base
  belongs_to :useraccount, foreign_key: 'contributor', class_name: 'Useraccount'
  belongs_to :group, foreign_key: 'id', class_name: 'Group'

  validates :comment, presence: true
end
