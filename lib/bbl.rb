module Bbl
  class CLI
    def initialize argv
      validate argv
      levels_above = '../../..'
      path = File.expand_path __FILE__ + levels_above + '/akjv.txt'
      cmd = ['grep', '-i'] + argv + [path]
      system *cmd
    end

    def validate argv
      show_help if argv.empty? or %w(--help -h).include? argv.first
    end
    def show_help
      puts <<EOT
\e[35;1mThis is just a wrapper around grep -i ____ akjv.txt\e[0m
(so, for now, the help is: man grep ).
If you want to see the whole text, you can do:
  \e[35mbbl . | less\e[0m
EOT
      exit 1
    end
  end
end
