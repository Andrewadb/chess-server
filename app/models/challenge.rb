class Challenge < ActiveRecord::Base
  belongs_to :challenger, :class_name => 'User', :foreign_key => 'challenger_id'
  belongs_to :challenged, :class_name => 'User', :foreign_key => 'challenged_id'
end
