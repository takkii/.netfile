# frozen_string_literal: true

require 'fileutils'

# Installer runner.
class UnInstallerRunner
  # default encoding utf-8, change encode here.
  def self.encoding_style
    Encoding.default_internal = 'UTF-8'
    Encoding.default_external = 'UTF-8'
  end

  def self.run
    encoding_style
    FileUtils.rm_rf(File.expand_path('~/AppData/Local/nvim'))
    puts 'The specified folder has been deleted.'
  end
end

begin
  UnInstallerRunner.run
rescue StandardError => e
  puts e.backtrace
ensure
  GC.compact
end

__END__
