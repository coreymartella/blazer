module Blazer
  class Audit < ActiveRecord::Base
    if Blazer.user_class.present? && Blazer.user_class.constantize < ActiveRecord::Base
      belongs_to :user, Blazer::BELONGS_TO_OPTIONAL.merge(class_name: Blazer.user_class.to_s)
    end
    
    belongs_to :query, Blazer::BELONGS_TO_OPTIONAL
  end
end
