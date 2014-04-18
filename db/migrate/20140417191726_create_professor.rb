class CreateProfessor < ActiveRecord::Migration
	def change
    	create_table :professors do |t|
  		t.integer :class_id
  		t.string :name
  		t.string :teaches
  		t.string :department
  end
 end
end