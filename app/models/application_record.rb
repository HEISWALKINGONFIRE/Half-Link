class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  add_flash_types :danger, :info
  
end
