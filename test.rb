winzA = 0.75
winzB = 0.70


def log_five(win_percentage_A, win_percentage_B)
  (win_percentage_A - win_percentage_A * win_percentage_B)/
  (win_percentage_A + win_percentage_B - 2 * win_percentage_A * win_percentage_B)
end
puts log_five(winzA, winzB)
