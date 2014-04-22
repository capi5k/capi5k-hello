load "config.rb"
load "config/deploy/xp5k.rb"
load "config/lib/spinner.rb"


# relative to the capfile
set :recipes_path, "./node_modules"

# Enable pretty output. Remove it if you want full logging
#logger.level = Logger::IMPORTANT
#STDOUT.sync


# load recipes
recipes = ["hello"]

recipes.each do |recipe|
  load "#{recipes_path}/#{recipe}/recipe.rb"
end

#override default roles
if File.exist?("roles.rb")
  load "roles.rb"
end

