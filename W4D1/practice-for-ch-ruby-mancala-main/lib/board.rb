class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {[]}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup, idx|
      4.times { cup << :stone } if idx != 6 && idx != 13
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if @cups[start_pos].nil?
    raise "Starting cup is empty" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)

    all_stones = @cups[start_pos].dup
    @cups[start_pos].clear
    cup_pos = start_pos
    
    while !all_stones.empty?
      cup_pos += 1
      cup_pos %= 13
      
      if cup_pos == 6
        @cups[6] << all_stones.pop if current_player_name == @name1
      elsif cup_pos == 13
        @cups[13] << all_stones.pop if current_player_name == @name2
      else
        @cups[cup_pos] << all_stones.pop
      end
      
    end
    
    render
    next_turn(cup_pos)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if @cups[ending_cup_idx] == 6 || @cups[ending_cup_idx] == 13 || @cups[ending_cup_idx].empty?
      return :switch
    elsif ending_cup_idx.between?(0,5) || ending_cup_idx.between?(7,12)
      return :prompt
    else
      return ending_cup_idx
    end
    
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all? { |cup| cup.empty? } || @cups[7..12].all? { |cup| cup.empty? }
  end

  def winner
    player_1_stones = @cups[6].count
    player_2_stones = @cups[13].count
    result = player_1_stones <=> player_2_stones
    if result == -1
      return @name2
    elsif result == 1
      return @name1
    else
      return :draw
    end
  end
end