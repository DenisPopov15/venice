num_workers = Integer(ENV["PUMA_WORKERS"] || 1)
num_threads = Integer(ENV["PUMA_THREADS"] || 3)

workers num_workers
threads num_threads, num_threads

app_dir = File.expand_path("../..", __FILE__)
if ENV["SOCKET_PATH"]
  bind "unix://#{app_dir}/#{ENV["SOCKET_PATH"]}"
end
if ENV["PUMA_LOG_PATH"] && ENV["PUMA_ERROR_PATH"]
  stdout_redirect "#{app_dir}/#{ENV["PUMA_LOG_PATH"]}", "#{app_dir}/#{ENV["PUMA_ERROR_PATH"]}", true
end
if ENV["PIDFILE_PATH"]
  pidfile "#{app_dir}/#{ENV["PIDFILE_PATH"]}"
end
if ENV["STATE_PATH"]
  state_path "#{app_dir}/#{ENV["STATE_PATH"]}"
  # activate_control_app
end


preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'

on_worker_boot do
  # Worker specific setup for Rails 4.1+
  # See: https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#on-worker-boot
end
