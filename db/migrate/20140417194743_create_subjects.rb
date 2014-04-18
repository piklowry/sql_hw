class CreateSubjects < ActiveRecord::Migration
  def change
  	create_table :subjects do |t|
  		t.integer :class_id
  		t.string :name
  		t.string :professor
  	end
  end
end
