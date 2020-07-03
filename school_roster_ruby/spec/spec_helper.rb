def db_configuration
  db_configuration_file = File.join(File.expand_path('..', __FILE__), '..', 'db', 'config.yml')
   YAML.load(File.read(db_configuration_file))
end

# RSpec.configure do |config|
#
#   config.before(:suite) do
#    ActiveRecord::Base.establish_connection(db_configuration["test"])
#     DatabaseCleaner.strategy = :transaction
#     DatabaseCleaner.clean_with(:truncation)
#   end
#
#   config.around(:each) do |example|
#     DatabaseCleaner.cleaning do
#       example.run
#     end
#   end
#
# end
