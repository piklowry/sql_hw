class CreateCourse < ActiveRecord::Migration
  def change
    	create_table :courses do |t|
  		t.integer :class_id
  		t.string :name
  		t.string :department
  	end
  end
end
