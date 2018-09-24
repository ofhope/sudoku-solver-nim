import os

const sudoku_range: int8 = 81
const sudoku_numbers: string = "123456789"

proc strReplaceChar(str: string, index: int, character: char): string =
  str[0..index - 1] & character & str[index + 1..str.high]

proc solve(puzzle: string): string =
  let i:int = puzzle.find('0')
  if i == -1:
    return puzzle

  var exclude: set[char]

  let new_puzzle: string = strReplaceChar(puzzle, i, 'a')
  return new_puzzle

if paramCount() == 1:
  let puzzle:string = paramStr(1)
  echo "solution: " & solve(puzzle)
else:
  echo "No puzzle found to solve"
