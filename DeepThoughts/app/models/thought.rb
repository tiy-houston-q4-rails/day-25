class Thought < ActiveRecord::Base
  belongs_to :user
  validates :deep_thought, presence: true, length: {maximum: 150, minimum: 5}
end
