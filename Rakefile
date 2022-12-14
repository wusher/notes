require "bridgetown"

Bridgetown.load_tasks

# Run rake without specifying any command to execute a deploy build by default.
task default: :deploy

#
# Standard set of tasks, which you can customize if you wish:
#
desc "Build the Bridgetown site for deployment"
task :deploy => [:clean, "frontend:build"] do
  Bridgetown::Commands::Build.start
end

desc "Build the site in a test environment"
task :test do
  ENV["BRIDGETOWN_ENV"] = "test"
  Bridgetown::Commands::Build.start
end

desc "Runs the clean command"
task :clean do
  Bridgetown::Commands::Clean.start
end

namespace :frontend do
  desc "Build the frontend with esbuild for deployment"
  task :build do
    sh "touch frontend/styles/jit-refresh.css"
    sh "yarn run esbuild"
  end

  desc "Watch the frontend with esbuild during development"
  task :dev do
    sh "touch frontend/styles/jit-refresh.css"
    sh "yarn run esbuild-dev"
  rescue Interrupt
  end
end

class PostRender 
  def initialize(title:, tags: "" ,type: nil)
    @title = title
    @tags = tags
    @type = type 
  end

  def tags 
    @tags.downcase.gsub(/\s+/, " ")
  end

  def date 
    Time.now.strftime("%Y-%m-%d")
  end

  def render 

    if @type == :cheat
    @template = File.read("templates/cheatsheet.md")
    else 
    @template = File.read("templates/new_post.md")
    end
    
    ERB.new(@template).result(binding)
  end
end

task :post do 
  STDOUT.puts "Enter post title: [today i learned]"
  input_title = STDIN.gets.strip 
  if input_title.size < 1 
    input_title = "today i learned"
  end
  puts "Title: #{input_title}"
  file_title = input_title.gsub(/\s+/, '-').downcase 
  title = Time.now.strftime("%Y-%m-%d") + "_#{file_title}.md"
  puts "Filename: #{title}"
  puts '-----'

  post_path = "src/_posts/#{title}"
  if !File.exist?(post_path)
    STDOUT.puts "Enter tags: []"
    input_tags = STDIN.gets.strip 
    File.open(post_path, "w") do |f|
      f << PostRender.new(title: input_title, tags: input_tags).render
    end
    `git add #{post_path}`
  end
  `code #{post_path}`
end

task :cheat do 
  STDOUT.puts "Enter the cheat sheet subject: [notes]"
  input_title = STDIN.gets.strip 
  if input_title.size < 1 
    input_title = "NOTES"
  end
  puts "Title: #{input_title}"
  file_title = input_title.gsub(/\s+/, '-').downcase 
  title = "0000-00-00_cheatsheet_#{file_title}.md"
  puts "Filename: #{title}"
  puts '-----'

  post_path = "src/_posts/#{title}"
  if !File.exist?(post_path)
    STDOUT.puts "Enter tags: []"
    input_tags = STDIN.gets.strip 
    File.open(post_path, "w") do |f|
      f << PostRender.new(title: input_title, tags: input_tags, type: :cheat).render
    end
    `git add #{post_path}`
  end
  `code #{post_path}`
end


#
# Add your own Rake tasks here! You can use `environment` as a prerequisite
# in order to write automations or other commands requiring a loaded site.
#
# task :my_task => :environment do
#   puts site.root_dir
#   automation do
#     say_status :rake, "I'm a Rake tast =) #{site.config.url}"
#   end
# end
