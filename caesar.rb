class Caesar
  def shift_array(array, n)
    shifted_num_array = []
    for i in array 
      if i.between?(65, 90)
        capitol = (65..90).to_a;
        new_capitol = []
        start_index = capitol.index(i)
        capitol.each_index { |i| new_capitol.push(capitol[(start_index + i) % 26]) }
        shifted_num_array.push(new_capitol[n])
      elsif i.between?(97, 122)
        lower = (97..122).to_a
        new_lower = []
        start_index = lower.index(i)
        lower.each_index { |i| new_lower.push(lower[(start_index + i) % 26]) }
        shifted_num_array.push(new_lower[n])
      else
        shifted_num_array.push(i)
      end
    end
    shifted_num_array
  end

  def caesar(string, shift)
    z = (shift % 26)
    string_array = string.split('').map { |i| i = i.ord }
    shifted_num_array = shift_array(string_array, z)
    shifted_num_array.map { |i| i = i.chr }.join('')
  end
end
