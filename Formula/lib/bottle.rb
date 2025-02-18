require 'uri'
require 'net/http'

class AccessDeniedError < StandardError

end

class ArtifactoryBottleDownloadStrategy < CurlDownloadStrategy
    require "utils/formatter"
  
    def initialize(url, name, version, **meta)
      super
      ohai "initializing artifactory bottle downloader"
      parse_url_pattern
      test_connection
    end

    def test_connection
      begin
        ohai "testing connection to artifactory"
        url = URI.parse("https://artifactory.jamf.build/artifactory/api/system/ping")
        req = Net::HTTP::Get.new(url.to_s)

        # setting both OpenTimeout and ReadTimeout
        res = Net::HTTP.start(url.host, url.port, use_ssl: true, :open_timeout => 3, :read_timeout => 3) {|http|
          http.request(req)
        }
      rescue Net::OpenTimeout, Net::ReadTimeout => e
        odie "Artifactory is NOT reachable"
      end
    end

    def parse_url_pattern
        unless match = url.match(%r{https://artifactory.jamf.build/artifactory/binaries/([^/]+)/([^/]+)/([^/]+)})
          raise CurlDownloadStrategyError, "Invalid url pattern for Artifactory."
        end

    
        _, @repo, @version, @filename = *match
        # This is a hack to fix the filename for the brew bottle name and versioning
        @filename.gsub!('-', '--')
        @url = "https://artifactory.jamf.build/artifactory/binaries/#{@repo}/#{version}/#{@filename}"
    end
    
    def download_url
        @url
    end
  
    private
  
    def _fetch(url:, resolved_url:, timeout:)
      curl_download download_url, to: temporary_path
    end
  
  end