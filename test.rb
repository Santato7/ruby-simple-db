require_relative 'lib/kv_store'
require 'fileutils'

def test_write_and_read
  db_name = '.test_db'
  store = KVStore.new(db_name)
  key = "test_key"
  value = "test_value"

  store.write(key, value)
  retrieved_value = store.read(key)

  if retrieved_value == value
    puts "Test Write and Read: PASSED"
  else
    puts "Test Write and Read: FAILED"
    puts "  Expected: #{value}"
    puts "  Got: #{retrieved_value}"
  end
ensure
  FileUtils.rm_rf(db_name) if Dir.exist?(db_name)
end

def test_read_non_existent_key
  db_name = '.test_db_non_existent'
  store = KVStore.new(db_name)
  key = "non_existent_key"

  retrieved_value = store.read(key)

  if retrieved_value.nil?
    puts "Test Read Non-Existent Key: PASSED"
  else
    puts "Test Read Non-Existent Key: FAILED"
    puts "  Expected: nil"
    puts "  Got: #{retrieved_value}"
  end
ensure
  FileUtils.rm_rf(db_name) if Dir.exist?(db_name)
end

def test_rewrite_key
  db_name = '.test_db_rewrite'
  store = KVStore.new(db_name)
  key = "rewrite_key"
  initial_value = "initial_value"
  new_value = "new_value"

  store.write(key, initial_value)
  store.write(key, new_value)
  retrieved_value = store.read(key)

  if retrieved_value == new_value
    puts "Test Rewrite Key: PASSED"
  else
    puts "Test Rewrite Key: FAILED"
    puts "  Expected: #{new_value}"
    puts "  Got: #{retrieved_value}"
  end
ensure
  FileUtils.rm_rf(db_name) if Dir.exist?(db_name)
end

# Run all tests
test_write_and_read
test_read_non_existent_key
test_rewrite_key
