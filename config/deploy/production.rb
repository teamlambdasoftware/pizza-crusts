set :rvm_type, :user
set :rvm_ruby_string, '1.9.3-p194'

# server
server 'pizza-crusts.com', :app, :web, :db, :primary => true

# deploy config
set :deploy_to, "/var/www/pizza-crusts"
set :deploy_via, :export
