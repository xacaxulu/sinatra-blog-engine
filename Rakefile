require 'rake'
require 'rake/testtask'
require 'rdoc/task'

  task :article do
    printf "  enter article name: "
    input = STDIN.gets.chomp.gsub(" ", '-')
    t = Time.new
     File.open("./views/#{t.year}-#{t.month}-#{t.day}-#{input}.html.markdown", 'w') do |f|
      f.write("#{input.gsub('-', ' ').upcase}\n")
      f.write("=====\n")
      f.write("-----")
    end
  end
