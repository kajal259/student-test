class DropStudentTests < ActiveRecord::Migration[7.0]
  def change
    drop_table :student_tests
  end
end
