# -*- encoding: utf-8 -*-

Capistrano::Configuration.instance.load do
  after 'deploy:update_code', 'deploy:capistrano_override_files'

  namespace :deploy do
    desc "Override environment own files from /config/override_files"
    task :capistrano_override_files, :role => :app do
      migrate_env = ARGV.detect { |a| a.to_s !~ /\A-/ && a.to_s !~ /=/ }
      src_dir = File.join(release_path, 'config', 'override_files', migrate_env, '*')
      local_files_dir = File.join('config', 'override_files', migrate_env)
      if File.exists?(local_files_dir)
        run "tree #{src_dir}"
        run "cp -r #{src_dir} #{release_path}"
      else
        puts "#{src_dir} is not exist"
      end
    end
  end
end

