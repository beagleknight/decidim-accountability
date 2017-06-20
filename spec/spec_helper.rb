ENV["ENGINE_NAME"] = File.dirname(File.dirname(__FILE__)).split("/").last
ENV["DECIDIM_ROOT_PATH"] = File.expand_path(".", Dir.pwd)
ENV["DECIDIM_ENGINE_PATH"] = File.expand_path(".", Dir.pwd)

require "decidim/dev/test/base_spec_helper"
