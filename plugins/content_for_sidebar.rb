# From http://webcache.googleusercontent.com/search?q=cache:b8PBckldHaMJ:gistflow.com/posts/609-content_for-sidebar-in-jekyll+&cd=1&hl=en&ct=clnk&gl=us
# Linked to a google cache since the original site seems to be down.

module Liquid
  class SidebarBlock < Liquid::Block
    alias :super_render :render

    def initialize(tag_name, identifier, tokens)
      super
    end

    def render(context)
      context.environments.first["page"]["sidebar"] = super_render(context)
      ''
    end
  end
end

Liquid::Template.register_tag('sidebar', Liquid::SidebarBlock)