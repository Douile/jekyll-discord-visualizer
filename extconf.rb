require "open3"

status_list = Open3.pipeline([{"NODE_ENV"=>"production"}, "npm", "ci"], ["node", "--version"])

raise "Unable to install dependencies, check you have npm and nodejs installed" if status_list.any? { |x| x != 0 }

File.write("Makefile", "")
