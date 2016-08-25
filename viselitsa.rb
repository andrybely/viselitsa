
require_relative "./game.rb"
require_relative "./result_printer.rb"
require_relative "./word_reader.rb"

printer = ResultPrinter.new

word_reader = WordReader.new

words_file_name = "./data/words.txt"

game = Game.new(word_reader.read_from_file(words_file_name))

while game.status == 0 do

  printer.print_status(game)
  game.ask_next_letter
end

printer.print_status(game)