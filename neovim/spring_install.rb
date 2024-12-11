# frozen_string_literal: true
#!/usr/bin/ruby

require 'open3'
require 'fileutils'

# Installer runner.
class InstallerRunner
  # default encoding utf-8, change encode here.
  def self.encoding_style
    Encoding.default_internal = 'UTF-8'
    Encoding.default_external = 'UTF-8'
  end

  def self.run
    encoding_style
    if Dir.exist?(File.expand_path('~/ddc_spring_load'))
      stdout_rb, _stderr_rb, _status_rb = Open3.capture3("ruby ./spring_delete.rb")
      stdout_rb
      stdout_gt, _stderr_gt, _status_gt = Open3.capture3("git clone git@github.com:takkii/ddc_spring_load.git")
      stdout_gt
      FileUtils.mv("#{File.dirname(__FILE__)}/ddc_spring_load", File.expand_path('~/'))
      puts 'Since there is already a folder, I deleted it and placed the specified folder.'
    else
      stdout_gt, _stderr_gt, _status_gt = Open3.capture3("git clone git@github.com:takkii/ddc_spring_load.git")
      stdout_gt
      FileUtils.mv("#{File.dirname(__FILE__)}/ddc_spring_load", File.expand_path('~/'))
      puts 'The specified folder has been placed.'
    end
  end
end

begin
  InstallerRunner.run
rescue StandardError => e
  puts e.backtrace
ensure
  GC.compact
end

__END__
