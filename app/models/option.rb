class Option < ApplicationRecord
  belongs_to :question

  # validates :correct, uniqueness: true, on: :question_setup

  # validates :correct, inclusion: { in: [true, false]}
  # validates :correct, uniqueness: { scope: :question_id, message: "should one option can true" }
  # validates_uniqueness_of :correct, scope: :question_id
  # validates_uniqueness_of :correct, :case_sensitive => false
  # validates :correct, presenece: true, if: -> { first_step? || require_validation }
end
