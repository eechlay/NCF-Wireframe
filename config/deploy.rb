set :application, "ncf-wireframe"

default_run_options[:pty] = true
set :repository,  "git@github.com:eechlay/NCF-Wireframe.git"
set :scm, :git

set :user, "kairistudio"
set :use_sudo, false
set :deploy_to, "/home/#{user}/ncf-wireframe"
set :host_name, "ncf-wireframe.dreamhosters.com"

set :ssh_options, { forward_agent: true }

server host_name, :app, :web, :db, :primary => true

after "deploy:restart", "deploy:cleanup"