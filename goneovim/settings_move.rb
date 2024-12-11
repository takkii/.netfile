# frozen_string_literal: true

require 'open3'
require 'fileutils'
require 'rbconfig'

# Install Runner
class InstallRunner
  # default encoding utf-8, change encode here.
  def self.encoding_style
    Encoding.default_internal = 'UTF-8'
    Encoding.default_external = 'UTF-8'
  end

  # multi platform goneovim settings.
  def self.run
    encoding_style

    host_os = RbConfig::CONFIG['host_os']
    case host_os

    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      if File.exist?(File.expand_path('~/.config/goneovim/settings.toml'))
        puts 'There is already a files, ruby does nothing.'
      else
        FileUtils.mkdir(File.expand_path('~/.config/goneovim'))
        FileUtils.cp(['./settings.toml'], File.expand_path('~/.config/goneovim'))
        puts 'The specified file has been extracted.'
      end

    when /darwin|mac os/
      if File.exist?(File.expand_path('~/.config/goneovim/settings.toml'))
        puts 'There is already a files, ruby does nothing.'
      else
        FileUtils.mkdir(File.expand_path('~/.config/goneovim'))
        FileUtils.cp(['./settings.toml'], File.expand_path('~/.config/goneovim'))
        puts 'The specified file has been extracted.'
      end

    when /linux/
      if File.exist?(File.expand_path('~/.config/goneovim/settings.toml'))
        puts 'There is already a files, ruby does nothing.'
      else
        FileUtils.mkdir(File.expand_path('~/.config/goneovim'))
        FileUtils.cp(['./settings.toml'], File.expand_path('~/.config/goneovim'))
        puts 'The specified file has been extracted.'
      end
    end
  end
end

begin
  InstallRunner.run
rescue StandardError => e
  puts e.backtrace
ensure
  GC.compact
end

__END__
