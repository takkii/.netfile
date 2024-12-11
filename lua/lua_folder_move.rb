# frozen_string_literal: true

require 'fileutils'
require 'rbconfig'

# Install Runner
class InstallRunner
  # default encoding utf-8, change encode here.
  def self.encoding_style
    Encoding.default_internal = 'UTF-8'
    Encoding.default_external = 'UTF-8'
  end

  # multi platform lua settings.
  def self.run
    encoding_style

    host_os = RbConfig::CONFIG['host_os']
    case host_os

    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      if Dir.exist?(File.expand_path('~/scoop/apps/neovim/current/bin/lua'))
        puts 'There is already a folder, ruby does nothing.'
      else
        FileUtils.mkdir(File.expand_path('~/scoop/apps/neovim/current/bin/lua'))
        FileUtils.cp(['./init.lua', './appearance.lua', './himekuri.lua', './settings.lua', './path_settings.lua', './runtimepath.lua', './spring_load.lua',  './vim-plug.lua', './ware_settings.lua'], File.expand_path('~/scoop/apps/neovim/current/bin/lua'))
        puts 'The specified file has been extracted.'
      end

    when /darwin|mac os/
      if File.exist?(File.expand_path('~/neovim/.deps/usr/share/luajit-2.1/init.lua'))
        puts 'There is already a folder, ruby does nothing.'
      else
        FileUtils.cp(['./init.lua', './appearance.lua', './himekuri.lua', './settings.lua', './path_settings.lua', './runtimepath.lua', './spring_load.lua', './vim-com.lua', './vim-plug.lua', './ware_settings.lua'], File.expand_path('~/neovim/.deps/usr/share/luajit-2.1'))
        puts 'The specified file has been extracted.'
      end

    when /linux/
      if File.exist?(File.expand_path('~/neovim/.deps/usr/share/luajit-2.1/init.lua'))
        puts 'There is already a folder, ruby does nothing.'
      else
        FileUtils.cp(['./init.lua', './appearance.lua', './himekuri.lua', './settings.lua', './path_settings.lua', './runtimepath.lua', './spring_load.lua', './vim-com.lua', './vim-plug.lua', './ware_settings.lua'], File.expand_path('~/neovim/.deps/usr/share/luajit-2.1'))
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
