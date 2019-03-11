require_relative '../../2'

describe 'transform tests' do
  test_array = [
    { primary: true,  id: 474 },
    { primary: false, id: 868 },
    { primary: false, id: 333 }
  ]

  result_hash = {}
  result_hash[333] = { primary: false }
  result_hash[868] = { primary: false }

  it 'should convert test_array to new array' do
    expect(transform_to_array(test_array)).to eq ['868/vm/none', '333/vm/none']
  end

  it 'should return empty array' do
    expect(transform_to_array(nil)).to eq []
  end

  it 'should convert test_array to new hash' do
    expect(transform_to_hash(test_array)).to eq result_hash
  end

  it 'should return empty hash' do
    expect(transform_to_hash(nil)).to eq Hash.new
  end
end
