class TicTacToe
    WIN_COMBINATIONS = [
        [0, 1, 2], #top row
        [3, 4, 5], #middle row
        [6, 7, 8], #bottom row

        [0, 3, 6], #top left to bottom right
        [1, 4, 7], #top middle to bottom middle
        [2, 5, 8], #top right to bottom right

        [0, 4, 8], #diagonal top left to bottom right
        [6 ,4, 2], #diagonal bottom left to top right
    ]

    def initialize 
        @board = [
            " ", " ", " ",
            " ", " ", " ",
            " ", " ", " ",
        ]
    end

    def display_board
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    def input_to_index(input)
        input.to_i - 1
    end

    def move(index, token = "X")
        @board[index] = token
    end

    def position_taken?(index)
        if @board[index] == "X" || @board[index] == "O"
            true
        else
            false
        end
    end

    def valid_move?(index)
        if @board[index] != " "
            false
        else
            true
        end
    end

    def turn_count
        count = 0
        @board.each do |space|
            if space == "X" || space == "O"
                count += 1
            end        
        end
        count
    end

    def current_player
        turn_count % 2 == 0 ? "X" : "O"
    end

    def turn
        puts "Please enter 1-9: "
        user_input = gets.strip

        index = input_to_index(user_input)

        if (valid_move?(index))
            move(index, current_player)
            display_board
        else
            turn
            
        end 
       
        def won?
            WIN_COMBINATIONS.filter do |combo|
                combo
            end
        end
    end






end