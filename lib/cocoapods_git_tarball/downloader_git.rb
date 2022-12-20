require 'cocoapods'
require 'cocoapods-downloader'

module Pod
  module Downloader
    # Concreted Downloader class that provides support for specifications with
    # git sources.
    #
    class Git
      def download_from_github!
        base_url = url.chomp('.git').chomp('/')
        ref = options[:commit] || options[:tag] || options[:branch] || 'master'
        download_url = "#{base_url}/archive/#{ref.to_s}.tar.gz"
        Http.new(target_path, download_url, {}).download
      end

      alias_method :orig_download!, :download!

      def download!
        if url =~ %r{https://(.+:.+@|)github\.com/} && !options[:submodules]
          download_from_github!
        else
          orig_download!
        end
      end
    end
  end
end
