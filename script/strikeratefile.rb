require 'smarter_csv'

IntegerConverter = Object.new

    def IntegerConverter.convert(value)
        Integer(value)
    end

SmarterCSV.process('sample_cricket_stats.csv', value_converters: { id: IntegerConverter })

CSV.read("sample_cricket_stats.csv")

begin

    def process_data(strike_rate)
        @strike_rate=strike_rate
        @run_scored=run_scored
        @balls_faced=balls_faced

        strike_rate=run_scored / balls_faced
    end

rescue Exception => e
    puts"An error occured during data processing"

    def print_data
   
    end

    def to_s
        "The Strike Rate of the player is #{strike_rate}"
    end
end