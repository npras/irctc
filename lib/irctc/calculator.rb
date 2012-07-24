module Irctc
  class Calculator
    
    def initialize(opts)
      @present_date = opts.present_date
      @future_date = opts.future_date
    end

    def calculate
      op = ''
      # present
      if @present_date
        result = @present_date + IRCTC_DAYS
        op += "\nTickets for the date:"
      # future
      elsif @future_date
        result = @future_date - IRCTC_DAYS
        days_left = (@future_date - Date.today).to_i - IRCTC_DAYS
        if days_left <= 0
          op += "\nTicket counter already opened '#{days_left.abs}' days ago."
        else
          op += "\nDon't forget to book in '#{days_left}' days!"
        end
        op += "\n\nCounter opening date:"
      end

      op += result.strftime("\n(%a) %b %d, %Y")
      op
    end

  end # class Calculator
end # module Irctc
