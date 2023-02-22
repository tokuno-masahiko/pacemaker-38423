class Plan < ApplicationRecord
  belongs_to :user
  belongs_to :adminn, optional: true
end
