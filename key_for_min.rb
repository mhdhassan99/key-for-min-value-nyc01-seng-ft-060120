# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  smallest = [nil, 1]
  first = true
  name_hash.each do |key, value|
    if first == true 
      smallest[0] = key
      smallest[1] = value
      first = false
    elsif smallest[1] > value
      smallest[0] = key
      smallest[1] = value
    end
  end
  smallest[0]
end