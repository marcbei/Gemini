require 'net/http'

desc "This task is called by the Heroku cron add-on"
task :call_page => :environment do
   uri = URI.parse('http://www.vizibid.com/')
   res = Net::HTTP.get_response(uri)
   puts "code #{res.code}"
 end