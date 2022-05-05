require "jekyll"
require "jekyll-discord-visualizer/version"
require "open3"
class Discord < Liquid::Tag

  def initialize(tagName, content, tokens)
    super
    @content = content
  end

  def render(context)
    html, error, status = Open3.capture3("node", File.join(File.dirname(__FILE__), "../node_modules/.bin/discord-visualizer"), @content)
    raise "Got unexpected status (#{status}) when compiling discord message: #{error}" if status != 0
    %Q{#{html}}
  end

  Liquid::Template.register_tag "discord", self
end
