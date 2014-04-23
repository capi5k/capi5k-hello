set :hello_path, "#{recipes_path}/hello"

load "#{hello_path}/roles.rb"
load "#{hello_path}/roles_definition.rb"
load "#{hello_path}/output.rb"

namespace :hello do

  desc 'Configuration'
  task :default do
    date
  end

  task :date, :roles => [:role1] do
    set :user, "root"
    run "apt-get update"
  end

end

