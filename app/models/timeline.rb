class Timeline < ActiveRecord::Base
  scope :sorted, -> { order(created_at: :desc) }
end
