class AddQtypeToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :qtype, :integer
  end
end
