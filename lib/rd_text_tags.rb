module RdTextTags
  include Radiant::Taggable

  desc %{
    Filters its contents with the RD filter.
  }

  tag 'rd' do |tag|
    RdTextFilter.filter(tag.expand)
  end
end
