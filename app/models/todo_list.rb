class TodoList < ApplicationRecord
  validates :item, :presence => true
end
