# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class RdTextFilterExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/rd_text_filter"
  
  # define_routes do |map|
  #   map.namespace :admin, :member => { :remove => :get } do |admin|
  #     admin.resources :rd_text_filter
  #   end
  # end
  
  def activate
    # admin.tabs.add "Rd Text Filter", "/admin/rd_text_filter", :after => "Layouts", :visibility => [:all]
  end
  
  def deactivate
    # admin.tabs.remove "Rd Text Filter"
  end
  
end
