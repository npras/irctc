require 'optparse'
require 'ostruct'

module Irctc
  class Command
    #
    # Return a structure describing the options.
    #
    def self.parse(args)
      # The options specified on the cmd line will be collected in *options*.
      # We set default values here.
      @options = OpenStruct.new
      @options.present_date = nil
      @options.future_date = nil

      opts = OptionParser.new do |opts|
        opts.banner = "Usage: irctc OPTIONS"

        opts.separator ""

        opts.on("-p", "--present DATE",
                "Which day's tickets are available for DATE?", 
                "Format(with quotes): 'July 2, 2012'") do |date|
          @options.present_date = Date.parse date
        end

        opts.on("-f", "--future DATE", 
                "When will the counter open for the given DATE?", 
                "Format(with quotes): 'July 13, 2012'") do |date|
          @options.future_date = Date.parse date
        end

        opts.separator ""
        opts.separator "Common options:"

        opts.on_tail("-h", "--help", "Show this message") do
          puts opts
          exit
        end
      end # OptionParser.new do

      opts.parse!(args)
      @options
    end # parse()

    def self.validate
      if @options.present_date.nil? and @options.future_date.nil?
        raise OptionParser::MissingArgument, "See --help."
      else
        true
      end
    end

  end # class Command
end # module Irctc
