require 'librarian/specfile'
require 'librarian/source'
require 'librarian/chef/dsl'
require 'librarian/chef/source'

module Librarian
  module Chef
    extend self
    extend Librarian

    module Overrides
      def specfile_name
        'Cheffile'
      end

      def install_path
        project_path.join('cookbooks')
      end

      def dsl_class
        Dsl
      end
    end

    extend Overrides

  end
end
