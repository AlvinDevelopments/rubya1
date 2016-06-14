def roll_dice(number_of_dice, number_of_rolls)

  dice_combos = Integer(number_of_dice)*6 - Integer(number_of_dice)


  freq_array = {}

  count = Integer(number_of_dice);

  (dice_combos+1).times do
    freq_array[count] = 0;
    count+=1;

  end

Integer(number_of_rolls).times do

  total = 0

  Integer(number_of_dice).times do
    total+=(1+rand(6))
  end

  freq_array[total] = (freq_array[total]+1)

  end

  puts freq_array

  i = Integer(number_of_dice);

  until i >  Integer(number_of_dice)*6 do
    print "#{i} "
    freq_array[i].times do
      print "#"
    end
    puts ""

    i+=1
  end

end

roll_dice(*ARGV)
