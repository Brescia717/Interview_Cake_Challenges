def get_products_of_all_ints_except_at_index(array_of_integers)
  array_of_products = []
  hash = Hash[array_of_integers.map.with_index.to_a].invert

  i = 0
  new_array = []

  until new_array.length == hash.length
    new_array << hash.select { |k,v| k != i }
    i += 1
  end
  new_array.each do |h|
    array_of_products << h.values.inject(:*)
  end

  return array_of_products
end

p get_products_of_all_ints_except_at_index([1,7,3,4])
p get_products_of_all_ints_except_at_index([1,7,0,4])
