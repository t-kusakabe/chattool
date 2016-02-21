Paperclip.options[:command_path] = '/usr/local/bin/'
Cocaine::CommandLine.runner = Cocaine::CommandLine::BackticksRunner.new
