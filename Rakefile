require_relative "./config/environment"
require "sinatra/activerecord/rake"

desc "Start the server"
task :server do  
  if ActiveRecord::Base.connection.migration_context.needs_migration?
    puts "Migrations are pending. Make sure to run `rake db:migrate` first."
    return
  end

  # rackup -p PORT will run on the port specified (9292 by default)
  ENV["PORT"] ||= "9292"
  rackup = "rackup -p #{ENV['PORT']}"

  # rerun allows auto-reloading of server when files are updated
  # -b runs in the background (include it or binding.pry won't work)
  exec "bundle exec rerun -b '#{rackup}'"
end

desc "reset db"
task :reset_db do
  puts "Dropping the db"
  system "rm ./db/development.sqlite"
  system "rm ./db/test.sqlite"
  system "rm ./db/production.sqlite"
  system "rm ./db/schema.rb"
  puts "Running migrations"
  system "rake db:migrate"
  puts "Seeding the database"
  system "rake db:seed"
  puts "Done seeding"
end



desc "Start the console"
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end

