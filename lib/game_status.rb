# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    p_1 = board[win_index_1]
    p_2 = board[win_index_2]
    p_3 = board[win_index_3]
    if p_1 == "X" && p_2 == "X" && p_3 == "X"
      return win_combination
      winner = "X"
    elsif p_1 == "O" && p_2 == "O" && p_3 == "O"
      return win_combination
      winner = "O"
    else
      win_combination=0
    end
  end
  if win_combination=0
    return false
  end
end

def full?(board)
  if board.include? " "
    return false
  else
    return true
  end
end

def draw?(board)
  if won?(board)
    return false
  else full?(board)
    return true
  end
end

def over?(board)
  if won?(board)
    return true
  elsif full?(board)
    return true
  else
    return false
  end
end

def winner(board)
    win_combination = won?(board)
    windex = win_combination[0]
    if board(windex) == "X"
      return "X"
    else
      return "O"
    end
end
