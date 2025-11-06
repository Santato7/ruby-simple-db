require_relative 'lib/kv_store'

if !ARGV[0]
  puts "ruby benchmark.rb <i>"
  exit
end

ALFABETO = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

array_of_keys = []
array_of_values = []

ARGV[0].to_i.times do |i|
  key = ''
  value = ''

  rand(1..15).times do
    key += ALFABETO[rand(26)]
  end

  rand(1..15).times do
    value += ALFABETO[rand(26)]
  end

  array_of_keys << key
  array_of_values << value
end

store = KVStore.new

t1_write = Time.now

ARGV[0].to_i.times do |i|
  store.write(array_of_keys[i], array_of_values[i])
end

t2_write = Time.now

puts "Write elapsed time: #{t2_write - t1_write}"

t1_read = Time.now

ARGV[0].to_i.times do |i|
  store.read(array_of_keys[i])
end

t2_read = Time.now

puts "Read elapsed time: #{t2_read - t1_read}"
