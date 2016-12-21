require 'dockmaster/plugin'

module Dockmaster
  class Sitemap < Dockmaster::Plugin
    class SitemapEventHandler
      class << self
        def docs_output(file, _output_str, store)
          Sitemap.files[store.rb_string] = file
        end
      end
    end

    class << self
      def gem_source
        File.expand_path(File.join(File.dirname(__FILE__), '../../'))
      end

      def id
        'sitemap'
      end

      def load(manager)
        manager.register_handler(:docs_output, SitemapEventHandler)
      end

      def misc_generation(master_store, output)
        output.load_erb('templates/sitemap.html.erb')
        output.render('sitemap.html', master_store)
      end

      def files
        @files ||= {}
      end
    end
  end
end
