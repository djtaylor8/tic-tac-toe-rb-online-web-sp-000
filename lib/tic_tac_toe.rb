WIN_COMBINATIONS =[
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
 
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  board_index = user_input.to_i - 1
end

<<<<<<< HEAD
def move(board, index, current_player)
  board[index] = current_player
=======
def move(board, index, token)
  board[index] = token
>>>>>>> 5359fecf6ef8840c011cf874abdf22aab103e090
end

def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

def valid_move?(board, index)
<<<<<<< HEAD
  index.between?(0,8) && !position_taken?(board, index)
=======
  if index.between?(0, 8) == true && position_taken?(board, index) == true
    true
  else 
    false
  end
>>>>>>> 5359fecf6ef8840c011cf874abdf22aab103e090
end

def turn_count(board)
  counter = 0 
  board.each do |space| 
    if space == "X" || space == "O"
      counter += 1 
    end
 end
 counter
end

def current_player(board)
  turn_count(board).even? == true ? "X" : "O"
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
<<<<<<< HEAD
    move(board, index, current_player(board))
=======
    move(board, index)
>>>>>>> 5359fecf6ef8840c011cf874abdf22aab103e090
    display_board(board)
  else
    turn(board)
  end
end

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    win_index_0 = win_combination[0]
    win_index_1 = win_combination[1]
    win_index_2 = win_combination[2]
    
    position_0 = board[win_index_0]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    
    position_0 == position_1 && 
    position_1 == position_2 && 
    position_taken?(board, win_index_0)
  end
end

def full?(board)
  board.all?{|index| index != " "} 
end

def draw?(board)
 !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if win_combination = won?(board)
    board[win_combination[0]]
 end
end

<<<<<<< HEAD
def play(board)
  until over?(board)
   turn(board)
  end
  if won?(board)
    puts "Congratulations #{winner(board)}!"
  elsif draw?(board)
    puts "Cat's Game!"
  end
end
=======

>>>>>>> 5359fecf6ef8840c011cf874abdf22aab103e090

