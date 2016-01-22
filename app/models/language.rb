class Language < ActiveRecord::Base
	scope :sorted, -> { order(:position) }
end
