# Add RVM's lib directory to the load path.
$:.unshift(File.expand_path('./lib', ENV['rvm_path']))

require 'rvm/capistrano'
require 'bundler/capistrano'
require 'capistrano/ext/multistage'
load 'deploy/assets'

set :stages, ["staging", "production"]
set :default_stage, "staging"

set :whenever_command, "bundle exec whenever"
require 'whenever/capistrano'


set :user, 'pizza'
set :application, 'pizza-crusts'

set :scm, 'git'
set :repository, "git://github.com/col/pizza-crusts.git"
set :git_enable_submodules, 1 # if you have vendored rails
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true


# additional settings
default_run_options[:pty] = true # Forgo errors when deploying from windows

namespace :db do
  task :setup do
    run "cd #{deploy_to}/current && #{rake} db:setup RAILS_ENV=production"
  end
end

# Passenger
namespace :deploy do
  task :start do
    ;
  end
  task :stop do
    ;
  end
  task :restart, :roles => :app, :except => {:no_release => true} do
    run "#{try_sudo} touch #{File.join(current_path, 'tmp', 'restart.txt')}"
  end
end
