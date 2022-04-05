RSpec.describe Human do
    context 'test initialized method' do
        it 'returns size' do
          expect(described_class.new.send(:salaries).size).to eq 6
        end
    end
    
    context '#average_salary method' do
      before do
        allow_any_instance_of(Human).to receive(:generate_salary).and_return([0,2,4,6,8,10])
      end
  
      it 'return average number of salary' do
        expect(described_class.new.average_salary).to eq 5
      end
    end
end