class User < ActiveRecord::Base
	has_many :ideas
	before_destroy :ensure_not_referenced_by_any_idea

 def ensure_not_referenced_by_any_idea
 	if ideas.count.zero?
 		return true
 	else
 		errors.add(:base, 'Ideas present')
 		return false
 	end 
 end



end
