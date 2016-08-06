class AddVotesToIdea < ActiveRecord::Migration
  def change
  	add_column :ideas, :vote, :integer, default: 0, null: false 
  end
end
