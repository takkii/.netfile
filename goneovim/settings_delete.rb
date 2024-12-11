# frozen_string_literal: true
#!/usr/bin/ruby

require 'fileutils'
require 'rbconfig'

# UnInstall Runner.
class UnInstallRunner
  # default encoding utf-8, change encode here.
  def self.encoding_style
    Encoding.default_internal = 'UTF-8'
    Encoding.default_external = 'UTF-8'
  end

  def self.run
    encoding_style

    host_os = RbConfig::CONFIG['host_os']
    case host_os

    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      FileUtils.rm_rf(File.expand_path('~/.config/goneovim'))
      puts 'The specified folder has been deleted.'

    when /darwin|mac os/
      FileUtils.rm_rf(File.expand_path('~/.config/goneovim'))
      puts 'The specified folder has been deleted.'

    when /linux/
      FileUtils.rm_rf(File.expand_path('~/.config/goneovim'))
      puts 'The specified folder has been deleted.'

    end
  end
end

begin
  UnInstallRunner.run
rescue StandardError => e
  puts e.backtrace
ensure
  GC.compact
end

__END__
