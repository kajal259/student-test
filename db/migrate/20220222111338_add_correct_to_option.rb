class AddCorrectToOption < ActiveRecord::Migration[7.0]
  def change
    add_column :options, :correct, :boolean, :default => false, :null => false
  end
end
