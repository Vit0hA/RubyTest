def transform_to_array(input_array)
  response = []
  input_array.each do |i|
    response << "#{i[:id]}/vm/none" unless i[:primary]
  end
  response
rescue
  response
end

def transform_to_hash(input_array)
  response = {}
  input_array.each do |i|
    response[i[:id]] = { primary: false } unless i[:primary]
  end
  response
rescue
  response
end
