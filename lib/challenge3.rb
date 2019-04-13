class Challenge3
    def initialize
        @valid_moves = ["U", "D", "L", "R"]
    end

    def processSokobanMove(board, move)
        @board = board
        @move = move
        return board if !@valid_moves.include?(move) || moveToWall? 
    end

    def moveToWall?
        player_position = find_player
        next_square = @board[player_position[:row]][player_position[:column] - 1] if @move == "L"
        return true if next_square == nil || next_square == "#"
    end

    def find_player
        player_position = {}
        @board.each_with_index do |row, idx|
            if row.include?("p") || row.include?("P")
                player_position[:row] = idx
                row.include?("p") ? player_position[:column] = row.index("p") : row.index("P")
                return player_position
            end
        end
    end
end