require 'rspec'

class ChangeMachine
  def change(number)
    output = []

    coins = [25, 10, 5, 1]

    i = 0
    coins.each do |coin|
      amount = number / coin
      number %= coin

      amount.times do
        output << coin
      end
      i += 1
    end

    # quarter = number / 25
    # number %= 25
    # quarter.times do
    #   output << 25
    # end
    # if number < 25
    #   dime = number / 10
    #   number %= 10
    #   dime.times do
    #     output << 10
    #   end
    # end
    # if number < 10
    #   nickle = number / 5
    #   number %= 5
    #   nickle.times do
    #     output << 5
    #   end
    # end
    # if number < 5
    #   number.times do
    #     output << 1
    #   end
    # end

    return output
  end
end

RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] if given 1' do
      change_machine = ChangeMachine.new
      result = change_machine.change(1)
      expect(result).to eq([1])
    end

    it 'should return [1, 1] if given 2'  do
      change_machine = ChangeMachine.new
      result = change_machine.change(2)
      expect(result).to eq([1, 1])
    end

    it 'should return [5] if given 5' do
      change_machine =ChangeMachine.new
      result = change_machine.change(5)
      expect(result).to eq([5])
    end

    it 'should return [5, 1] if given 6' do
      change_machine = ChangeMachine.new
      result = change_machine.change(6)
      expect(result).to eq([5, 1])
    end

    it 'should return [10] if given 10' do
      change_machine = ChangeMachine.new
      result = change_machine.change(10)
      expect(result).to eq([10])
    end

    it 'should return [25] if given 25' do
      change_machine = ChangeMachine.new
      result = change_machine.change(25)
      expect(result).to eq([25])
    end

    it 'should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1]' do
      change_machine = ChangeMachine.new
      result = change_machine.change(119)
      expect(result).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end