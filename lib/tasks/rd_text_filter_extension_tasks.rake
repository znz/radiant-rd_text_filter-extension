namespace :radiant do
  namespace :extensions do
    namespace :rd_text_filter do
      
      desc "Runs the migration of the Rd Text Filter extension"
      task :migrate => :environment do
        require 'radiant/extension_migrator'
        if ENV["VERSION"]
          RdTextFilterExtension.migrator.migrate(ENV["VERSION"].to_i)
        else
          RdTextFilterExtension.migrator.migrate
        end
      end
      
      desc "Copies public assets of the Rd Text Filter to the instance public/ directory."
      task :update => :environment do
        is_svn_or_dir = proc {|path| path =~ /\.svn/ || File.directory?(path) }
        puts "Copying assets from RdTextFilterExtension"
        Dir[RdTextFilterExtension.root + "/public/**/*"].reject(&is_svn_or_dir).each do |file|
          path = file.sub(RdTextFilterExtension.root, '')
          directory = File.dirname(path)
          mkdir_p RAILS_ROOT + directory, :verbose => false
          cp file, RAILS_ROOT + path, :verbose => false
        end
      end  
    end
  end
end
