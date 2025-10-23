module Jekyll
  class IconTag < Liquid::Tag
    def initialize(tag_name, name, tokens)
      super
      @name = name.strip
      @human_name = @name.gsub(/-/, ' ')
    end

    def render(context)
      site = context.registers[:site]
      icon_dir = File.join(site.source, site.config["icon_dir"] || "assets/images/icons")

      icon_path = File.join(icon_dir, "#{@name}.svg")
      unless File.exist?(icon_path)
        raise "No SVG found for '#{@name}' in #{icon_dir}"
      end

      svg_content = File.read(icon_path)
        .gsub(/<\?xml[^>]+>\s+/, '')

      "<span class=\"icon icon-#{@name}\">#{svg_content}</span>"
    end
  end
end

Liquid::Template.register_tag('icon', Jekyll::IconTag)
