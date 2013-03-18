require 'Date'
class Post
  attr_accessor :title, :link, :date
end

get '/' do
  @posts = Dir.glob("./views/*.markdown").collect do |file|
    post = Post.new
    post.link = file
    post.title = file.gsub("./views/",'').gsub(".html.markdown",'').gsub(/-|_/,' ').gsub(/[0-9]/, '').capitalize
    post.date = Date.parse(file.scan(/\d{4}-\d{1,2}-\d{1,2}/).flatten.first)
    post
  end

  @posts = @posts.sort_by {|post| post.date }.reverse

  haml :index
end

get '/contact' do
  haml :contact
end

get '/views/*' do
  haml :page
end
