Styling my blog
=====
-----


So I hate Middlman. I don't like middlemen in general, I go straight to the source. So I decided to roll my own little blog engine in Sinatra. I think it's cool. I use Haml and Markdown. The best part of this blog is that it has 3 methods in server.rb:


        get '/' do
          haml :index
        end

        get '/contact' do
          haml :contact
        end

        get '/views/*' do
          haml :page
        end

Secondly, I was able to pull in all my Middleman markdown files and display them by this:

    %h3 Stuff I've written about gSchool
      - Dir.glob("./views/*.markdown").sort_by {|filename| File.mtime(filename) }.reverse.each do |f|
        %p <a href="#{f}"}</a>#{f.gsub("./views/",'').gsub(".html.markdown",'')}

Here's my layout.haml

    %html
      %head
        %meta{:charset => "utf-8"}
        %title xaca xulu
        %meta{:name => "description", :content => "?"}
        %meta{:name => "author", :content => "?"}

        %link{ :href => "/css/style.css", :type => "text/css", :rel => "stylesheet" }

      %body
        %div= haml :navbar
        %div= yield

My website isn't awesome, but it definitely doesn't suck. I'm starting to hack around with Twitter Bootstrap which is helping me understand positioning. In front-end development, I'm still sort of in the "that website looks cool, I'm gonna copy it" but I'm getting better.

