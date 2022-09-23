puts "ジャンケン"

#ジャンケンメソッド
def jyanken
    puts "グー[0], チョキ[1], パー[2]"
    my_hand = gets.chomp.to_i
    your_hand = rand(3)
    jyankens = ["グー", "チョキ", "パー"]
    puts "自分の手 #{jyankens[my_hand]}, 相手の手#{jyankens[your_hand]}}"

    if my_hand == your_hand
        puts "あいこでしょ"
        return true
    elsif (my_hand == 0 && your_hand == 1) || (my_hand == 1 && your_hand == 2) || (my_hand == 2 && your_hand == 0)
        puts "勝ち"
        @jyanken_result = "win"
        return false
    else
        puts "負け"
        @jyanken_result = "lose"
        return false
    end

end

re_jyanken = true

while re_jyanken
    re_jyanken = jyanken
end

#あっち向いてホイメソッド
def acchimuitehoi
    puts "あっち向いて"
    puts "↑(0), →(1), ↓(2), ←(3)"
    my_direction = gets.chomp.to_i
    your_direction = rand(4)
    directions = ["↑", "→", "↓", "←"]
    puts "自分#{directions[my_direction]} 相手#{directions[your_direction]}"

    if my_direction == your_direction && @jyanken_result == "win"
        puts "勝ち"
        return false
    elsif my_direction == your_direction && @jyanken_result == "lose"
        puts "負け"
        return false
    else
        #puts "引き分け"
        return jyanken
    end

end

next_game = true
  
while acchimuitehoi
  while next_game
    next_game = jyanken
  end
end