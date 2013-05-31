module Word
  class CLI
    def initialize argv
      validate argv
      levels_above = '../../..'
      path = File.expand_path __FILE__ + levels_above + '/akjv.txt'
      cmd = ['grep'] + argv + [path]
      system *cmd
    end

    def validate argv
      show_help if argv.empty? or %w(--help -h).include? argv.first
    end
    def show_help
      puts "\e[35;1mThis is just a wrapper around grep ____ akjv.txt\e[0m"
      exit 1
    end
  end
end
