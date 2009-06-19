$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module Babelphish
  VERSION = '0.1.4'

  def self.load_tasks
    if File.exists?('Rakefile')
      load 'Rakefile'
      Dir[File.join(File.dirname(__FILE__), 'tasks', '**/*.rake')].each { |rake| load rake }
      return true
    else
      return false
    end
  end

end