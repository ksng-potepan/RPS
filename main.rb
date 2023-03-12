stone = "グー"
scissors = "チョキ"
paper = "パー"
close = "終了"
 
hands = [stone,scissors,paper,close]

up = "上"
under = "下"
left = "左"
right = "右"

looks = [up,under,left,right]

def output_hand(player, hand)
    puts "#{player} :#{hand}を出しました" 
end

def output_look(player, look)
    puts "#{player} :#{look}" 
end

loop do
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"

    input = gets.to_i
    break if input == 3

    puts "ホイ！"
    puts "-------------------------"
 
    my_hand = hands[input]
    output_hand("あなた", my_hand)

    opponent_hand = hands.sample until (opponent_hand) && (opponent_hand != close)
    output_hand("相手", opponent_hand)
    puts "-------------------------"

    if my_hand == opponent_hand
        puts 'あいこで〜'
        puts "-------------------------"
        next
    end
  
    rps_winner = (my_hand == stone && opponent_hand == scissors)|| (my_hand == scissors && opponent_hand == paper)? "あなた":"相手"

    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    input = gets.to_i
    puts "ホイ！"
    puts "-------------------------"
    
    my_look = looks[input]
    output_look("あなた", my_look)
    
    opponent_look = looks.sample 
    output_look("相手", opponent_look)
    
    puts "-------------------------"
    
    if my_look == opponent_look
        puts "#{rps_winner}の勝ち"
        break
    end
 end
