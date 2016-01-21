class Language < ActiveRecord::Base
	scope :sorted, lambda { order("languages.position ASC")}
end
