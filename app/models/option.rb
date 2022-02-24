class Option < ApplicationRecord
  belongs_to :question

  # validates :correct, uniqueness: true, on: :question_setup
  validate :correct_true, if: :option_correct?

  private

  def correct_true
    return errors.add :correct, "Not Saved" if question.options.where(correct: true).present?
  end

  def option_correct?
    correct == true
  end



    # validates :correct, presence: true
  # validates_inclusion_of :correct, :in => [true, false]
  # validates_uniqueness_of :correct, scope: [:question_id]
  # validates :correct, inclusion: { in: [true, false]}
  # validates :correct, uniqueness: { scope: :question_id, message: "should one option can true" }
  # validates_uniqueness_of :correct, scope: :question_id
  # validates_uniqueness_of :correct, :case_sensitive => false
  # validates :correct, presenece: true, if: -> { first_step? || require_validation }
end
