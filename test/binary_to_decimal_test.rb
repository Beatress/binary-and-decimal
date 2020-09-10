require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/binary_to_decimal'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "binary to decimal" do
  it "From 10011001 to 153" do
    binary_array = [1, 0, 0, 1, 1, 0, 0, 1]
    expected_decimal = 153

    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end

  it "From 00001101 to 13" do
    binary_array = [0, 0, 0, 0, 1, 1, 0, 1]
    expected_decimal = 13

    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end

  it "From 10000000 to 128" do
    binary_array = [1, 0, 0, 0, 0, 0, 0, 0]
    expected_decimal = 128

    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end

  it "From random binary to decimal" do
    binary_array = Array.new(8) { rand(0..1) }
    expected_decimal = binary_array.join.to_s.to_i(2)

    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end
end

describe "decimal to binary" do
  it "From 14 to 1110" do
    decimal_number = 14
    expected_binary = [1, 1, 1, 0]

    expect(decimal_to_binary(decimal_number)).must_equal expected_binary
  end

  it "From 321 to 101000001" do
    decimal_number = 321
    expected_binary = [1, 0, 1, 0, 0, 0, 0, 0, 1]

    expect(decimal_to_binary(decimal_number)).must_equal expected_binary
  end

  it "From random decimal to binary" do
    decimal_number = rand(1..1000000)
    expected_binary = decimal_number.to_s(2).split(//)
    expected_binary.map! { |i| i.to_i }

    expect(decimal_to_binary(decimal_number)).must_equal expected_binary
  end
end
