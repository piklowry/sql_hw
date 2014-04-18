require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:///sql_hw.db"

# get "/" do
# 	erb :"index"
# end

# get "/search" do
# 	erb :"search"
# end

# get "/courses/edit" do
# 	erb :"courses/edit"
# end

# get "/courses" do
# 	erb :"courses/index"
# end

# get "/courses/new" do
# 	erb :"courses/new"
# end

# get "/courses/show" do
# 	erb :"courses/show"
# end

# get "/professors/edit" do
# 	erb :"professors/edit"
# end

# get "/professors" do
# 	erb :"professors/index"
# end

# get "/professors/new" do
# 	erb :"professors/new"
# end

# get "/professors/new" do
# 	erb :"professors/show"
# end

# get "/subjects/edit" do
# 	erb :"subjects/edit"
# end

# get "/subjects" do
# 	erb :"subjects/index"
# end

# get "/subjects/new" do
# 	erb :"subjects/new"
# end

# get "/subjects/new" do
# 	erb :"subjects/show"
# end


class Professor < ActiveRecord::Base
end



class Course < ActiveRecord::Base
	end



class Subject < ActiveRecord::Base
end


