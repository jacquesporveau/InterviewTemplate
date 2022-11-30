require 'rspec'
require_relative './main'

RSpec.describe Main do
  let(:instance) { described_class.new }

  describe '#call' do
    subject { instance.call(arg) }

    context 'when the argument is "world"' do
      let(:arg) { 'world' }

      it 'returns "hello world"' do
        expect(subject).to eq('hello world')
      end
    end

    context 'when the argument is "freddy"' do
      let(:arg) { 'freddy' }

      it 'returns "hello world"' do
        expect(subject).to eq('hello freddy')
      end
    end
  end
end