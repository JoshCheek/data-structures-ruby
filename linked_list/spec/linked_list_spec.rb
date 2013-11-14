require 'linked_list'

describe LinkedList do
  describe '#include?' do
    let(:list) { described_class.new }

    it 'returns false when the item is not in the list' do
      list.include?('abc').should be_false
    end

    it 'returns true when the item is added to the list' do
      list.add 'abc'
      list.include?('abc').should be_true
    end

    it 'returns false when the item is removed from the list' do
      list.add 'abc'
      list.delete 'abc'
      list.include?('abc').should be_false
    end
  end

  describe 'counting' do
    it 'is zero when initialized'
    it 'increments its counter when I add elements'
    it 'decreases its counter when I remove elements'
  end

  describe '#each' do
    it 'iterates over every item' do
      list = LinkedList.new
      items = []
      list.each { |item| items << item }
      items.should == []

      list = LinkedList.new
      list.add 'abc'
      items = []
      list.each { |item| items << item }
      items.should == ['abc']

      list = LinkedList.new
      list.add 'abc'
      list.add 'def'
      items = []
      list.each { |item| items << item }
      items.should == ['abc', 'def']
    end
  end

  describe '#add' do
    it 'is included in the list'
    it 'is the first item in the list'
  end

  describe '#delete' do
    it 'is removed from the list'
  end

end
