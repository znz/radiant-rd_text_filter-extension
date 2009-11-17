# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class RdTextFilterExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/rd_text_filter"

  def activate
    RdTextFilter
    Page.send :include, RdTextTags
  end
end
