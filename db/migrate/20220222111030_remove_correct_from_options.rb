class RemoveCorrectFromOptions < ActiveRecord::Migration[7.0]
  def change
    remove_column :options, :correct, :boolean
  end
end
