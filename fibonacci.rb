def fibonacci(number_of_members)

  members = Integer(number_of_members)

  f_seq = {}

  i = members - 2;
  j = 2;


  if i >= 0

    f_seq[0] = 1
    f_seq[1] = 1

    i.times do
      f_seq[j] = f_seq[j-1] + f_seq[j-2]
      j+=1
    end


  else
    f_seq[0] = 1

  end

  print "["
  f_seq.each do |key, value|
    if key != members-1
      print "#{value}, "
    else
      print "#{value}"
    end
  end

  print "]"
  puts


end

fibonacci(*ARGV)
