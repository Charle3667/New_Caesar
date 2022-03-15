require './caesar.rb'

describe Caesar do
  describe "#caesar" do
    it 'Can shift letters forward by one.' do
      caesar = Caesar.new
      expect(caesar.caesar('hello', 1)).to eql('ifmmp')
    end

    it 'Can shift letters back by one.' do
      caesar = Caesar.new
      expect(caesar.caesar('hello', -1)).to eql('gdkkn')
    end

    it 'Retains the letter case of the original message.' do
      caesar = Caesar.new
      expect(caesar.caesar('Hello', 1)).to eql('Ifmmp')
    end

    it 'Ignores spaces and punctation.' do
      caesar = Caesar.new
      expect(caesar.caesar('Hello there!', 1)).to eql('Ifmmp uifsf!')
    end

    it 'Can shift by a factor greater than 26.' do
      caesar = Caesar.new
      expect(caesar.caesar('Hello there!', 3051)).to eql('Qnuux cqnan!')
    end
  end
end
