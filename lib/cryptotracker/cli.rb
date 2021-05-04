class Cryptotracker::CLI 

    def call 
        get_crypto 
        menu 
    end 

    def get_crypto 
        puts "Welcome to Cryptotracker! Here are just some of the crypto's you can track!"
        puts %Q( 
            1. Bitcoin 
            2. Ethereum 
            3. Binance Coin 
            4. XRP 
            5. Tether 
            ...
            ...
            ...
            ...
        ) 
    end 

    def menu 
        list_options
        puts "Please select an action: " 
        input = nil 
        while input != 'exit' 
            input = gets.chomp
            case input 
            when '1' 
                puts "All Currencies" 
            when '2' 
                puts "How much would you like to add to your account?" 
            when '3' 
                puts "Which crypto would you like to add to your portfolio?" 
            when '4' 
                puts "Which crypto would you like to remove from your portfolio?" 
            when 'exit' 
                break;
            end 
            list_options
        end 
    end 

    def list_options 
        puts "1. List all Currencies" 
        puts "2. Add funds to your account" 
        puts "3. Add crypto to your portfolio" 
        puts "4. Remove crypto from your portfolio" 
        puts "Type 'exit' to quit"
    end 
end 