require 'hammer_cli/i18n'

module HammerCLIForemanTemplates
  module I18n

    class LocaleDomain < HammerCLI::I18n::LocaleDomain

      def translated_files
        Dir.glob(File.join(File.dirname(__FILE__), '../**/*.rb'))
      end

      def locale_dir
        File.join(File.dirname(__FILE__), '../../locale')
      end

      def domain_name
        'hammer_cli_foreman_templates'
      end
    end

  end
end

HammerCLI::I18n.add_domain(HammerCLIForemanTemplates::I18n::LocaleDomain.new)
