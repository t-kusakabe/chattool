class Dm < ActiveRecord::Base
  belongs_to :useraccount, foreign_key: 'contributor', class_name: 'Useraccount'
end
