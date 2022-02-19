class Question < ApplicationRecord
  belongs_to :subject
  belongs_to :admin
  has_many :options, dependent: :delete_all

  enum qtype: {Radio_Button: 0, Check_Box: 1, Text_Box: 2, Text_Area: 3}
end
