require './lib/challenge3.rb'

describe Challenge3 do
    it 'returns the same board if player move is invalid' do
        game = Challenge3.new
        expect(game.processSokobanMove(['###', '#p#', '###'], 'W')).to eq(['###', '#p#', '###'])  
    end

    it 'returns the same board if player moves left into a wall' do
        game = Challenge3.new
        expect(game.processSokobanMove(['###', '#p#', '###'], 'L')).to eq(['###', '#p#', '###'])  
    end
end