# KVStore

A simple key-value store implemented in Ruby.

## Description

KVStore is a lightweight, file-system-based key-value database. It stores data in a hierarchical directory structure based on the key's length and its first and last characters. This project is structured as a Ruby gem, making it easy to integrate into other projects.

## Usage

### Prerequisites

- Ruby

### Installation

To use KVStore in your project, you can clone this repository and include it in your project's load path.

### Example

Here's a quick example of how to use KVStore:

```ruby
require_relative 'lib/kv_store'

# Create a new database instance
store = KVStore.new('my_database')

# Write a key-value pair
store.write('my_key', 'my_value')

# Read the value associated with a key
value = store.read('my_key')
puts value # Output: my_value
```

## Testing

To run the test suite, execute the following command:

```bash
ruby test.rb
```

## Benchmarking

A benchmark script is included to measure the performance of the key-value store. You can run it with the following command, where `<number>` is the number of key-value pairs to write and read:

```bash
ruby benchmark.rb <number>
```
