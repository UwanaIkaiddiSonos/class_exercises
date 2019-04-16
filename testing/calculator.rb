require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(square)
    return square * square
  end

  def power(number, exponent)
    return number ** exponent
  end

  def sqroot(number)
    return Math.sqrt(number)
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
    it 'should return the sum of two negative numbers' do
      calculator = Calculator.new
      result = calculator.add(-1, -3)
      expect(result).to eq(-4)
    end
  end

  describe '#subtract' do
    it 'should return the difference of two numbers' do 
      calculator = Calculator.new
      result = calculator.subtract(12, 8)
      expect(result).to eq(4)      
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(6, 4)
      expect(result).to eq(24)
    end
  end

  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(144, 12)
      expect(result).to eq(12)
    end
  end

  describe '#square' do
    it 'should return the square of a number' do
      calculator = Calculator.new
      result = calculator.square(6)
      expect(result).to eq(36)
    end
  end

  describe '#power' do
    it 'should return a number to the exponent power' do
      calculator = Calculator.new
      result = calculator.power(4, 2)
      expect(result).to eq(16)
    end
  end

  describe '#sqroot' do
    it 'should return the positive square root of two numbers' do
      calculator = Calculator.new
      result = calculator.sqroot(25)
      expect(result).to eq(5)
    end
  end
end