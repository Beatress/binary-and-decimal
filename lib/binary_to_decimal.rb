# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  i = binary_array.length - 1
  num = 0
  position = 0

  until position == binary_array.length
    num += binary_array[position] * 2 ** i
    i -= 1
    position += 1
  end
  return num
end

def decimal_to_binary(num)
  return nil if num < 0 # Negative numbers not supported yet
  return [0] if num == 0
  length = 0
  length += 1 until 2 ** length > num
  # puts "The most significant digit will be #{2 ** (length - 1)} for an array length of #{length}"
  binary = Array.new(length, 0)
  index = length - 1 # Traverse backwards through the array
  until num == 0
    binary[index] = (num % 2)
    num /= 2
    index -= 1
  end

  return binary

  #### Really slick way to implement this if built in methods (.reverse) is allowed
  # binary = []
  # until num == 0
  #   binary << (num % 2)
  #   num /= 2
  # end
  #
  # return binary.reverse
end