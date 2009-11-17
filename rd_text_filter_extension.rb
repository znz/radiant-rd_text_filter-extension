# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class RdTextFilterExtension < Radiant::Extension
  version "1.0"
  description "Filter RadiantCMS content with RD"
  url "http://github.com/znz/radiant-rd_text_filter-extension"

  def activate
    RdTextFilter
    Page.send :include, RdTextTags
  end
end
