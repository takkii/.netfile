# frozen_string_literal: true

require 'open3'
require 'fileutils'

Encoding.default_internal = 'UTF-8'
Encoding.default_external = 'UTF-8'

# create init.vim
class White
  def self.magic
    if Dir.exist?(File.expand_path('~/AppData/Local/nvim'))
      puts 'Already have a  folder...do nothing.'
  else
      FileUtils.mkdir(File.expand_path('~/AppData/Local/nvim'))
      myhome = File.expand_path('~/AppData/Local/nvim/init.vim')
      File.open(myhome, 'a:utf-8', perm=0o777) do |f|
      f.puts <<~DOC
" .netfile
if filereadable(expand('~/.netfile/lua/init.lua'))
  lua require('init')
endif
      DOC
      puts 'I placed init.vim in the specified PATH.'
    end
    end
  end
end

begin
  White.magic
rescue StandardError => e
  puts e.backtrace
ensure
  GC.compact
end

__END__

