require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:///sql_hw.db"

get "/" do
	redirect "/courses/main"
end

get "/courses/main" do
	@all_courses = Course.all
	erb :"courses/index"
end

get "/subjects/main" do
	@all_subjects = Subject.all
	erb :"subjects/index"
end

get "/professors/main" do
	@all_professors = Professor.all
	erb :"professors/index"
end

# -------



get "/search" do
	erb :"search"
end


get "/courses/new" do
	erb :"courses/new"
end


get "/professors/edit" do
	erb :"professors/edit"
end


get "/professors/new" do
	erb :"professors/new"
end

get "/professors/show" do
	erb :"professors/show"
end

get "/subjects/edit" do
	erb :"subjects/edit"
end

get "/subjects/new" do
	erb :"subjects/new"
end

get "/subjects/show" do
	erb :"subjects/show"
end

# get "/courses/show" do
# 	erb :"courses/show"
# end



# ------------------

get "/courses" do
	@course = Course.find(params[:id])
	erb :"/courses/edit"
end	

put "/courses/:id" do
	@course = Course.find(params[:id])
	@course.update_attributes(params[:name])
	redirect "/courses/main"
end

get "/courses/:id/edit" do
	@course_open = Course.find(params[:id])
	erb :"/courses/edit"
end


delete "/courses/:id" do
	@course = Course.find(params[:id])
	@course.destroy
	redirect "/courses/main"
end

# -------------

get "/subjects" do
	@subject = Subject.find(params[:id])
	erb :"/subjects/edit"
end	

get "/subjects/:id/edit" do
	@subject_open = Subject.find(params[:id])
	erb :"/subjects/edit"
end

put "/subjects/:id" do
	@subject = Subject.find(params[:id])
	@subject.update_attributes(params[:name])
	redirect "/subjects/main"
end

delete "/subjects/:id" do
	@subject = Subject.find(params[:id])
	@subject.destroy
	redirect "/subjects/main"
end



# -----------------



get "/professors" do
	@professor = professor.find(params[:id])
	erb :"/professors/edit"
end	

get "/professors/:id/edit" do
	@professor_open = Professor.find(params[:id])
	erb :"/professors/edit"
end

put "/professors/:id" do
	@professor = Professor.find(params[:id])
	@professor.update_attributes(params[:name])
	redirect "/professors/main"
end

delete "/professors/:id" do
	@professor = Professor.find(params[:id])
	@professor.destroy
	redirect "/professors/main"
end

# ---------

post "/subjects/new" do
	puts params.inspect
	@subject = Subject.new(params[:subject])
  if @subject.save
    redirect "/subjects/main"
  else
    erb :"/subjects/new"
  end
end

post "/professors/new" do
	puts params.inspect
	@professor = Professor.new(params[:professor])
  if @professor.save
    redirect "/professors/main"
  else
    erb :"/error"
  end
end

post "/courses/new" do
	puts params.inspect
	@course = Course.new(params[:course])
  if @course.save
    redirect "/courses/main"
  else
    erb :"/error"
  end
end

#------------>


get "/courses/show" do
  @course = Course.find_by_sql("SELECT * FROM professors
  INNER JOIN subjects ON professors.class_id = subjects.class_id
  INNER JOIN courses ON subjects.class_id = courses.class_id")
  erb :"/courses/show"
end


# get "/courses/show" do
#   @course = Course.find_by_sql("SELECT * FROM courses
#   INNER JOIN professors ON courses.class_id = professors.class_id
#   INNER JOIN subjects ON professors.class_id = subjects.class_id
#   ORDER BY courses.class_id")
#   erb :"/courses/show"
# end

# get "/courses/show" do
#   @course = Course.find_by_sql("SELECT * FROM professors
#   INNER JOIN courses ON professors.class_id = courses.class_id
#   INNER JOIN subjects ON courses.class_id = subjects.class_id")
#   erb :"/courses/show"
# end

# get "/courses/show" do
#   @course = Course.find_by_sql("SELECT * FROM subjects
#   INNER JOIN courses ON subjects.class_id = courses.class_id
#   INNER JOIN professors ON courses.class_id = professors.class_id
#   ORDER BY subjects.id desc")
#   erb :"/courses/show"
# end


class Professor < ActiveRecord::Base
end



class Course < ActiveRecord::Base
	end



class Subject < ActiveRecord::Base
end


