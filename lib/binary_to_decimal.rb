# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  i = binary_array.length - 1
  num = 0

  binary_array.each do |bit|
    num += bit * 2 ** i
    i -= 1
  end
  return num
end

def decimal_to_binary(num)
  binary = []
  until num == 0
    binary << (num % 2)
    num /= 2
  end

  return binary.reverse
end