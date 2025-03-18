exit if __FILE__ == $0

DB = '.db'
Dir.mkdir(DB) unless Dir.exist?(DB)

def write key, value
  char_count = key.size
  first_char = key.chars.first
  last_char = key.chars.last

  char_count_path = [DB, char_count].join '/'
  first_char_path = [DB, char_count, first_char].join '/'
  last_char_path = [DB, char_count, first_char, last_char].join '/'

  Dir.mkdir(char_count_path) unless Dir.exist?(char_count_path)
  Dir.mkdir(first_char_path) unless Dir.exist?(first_char_path)
  Dir.mkdir(last_char_path) unless Dir.exist?(last_char_path)

  File.write([last_char_path, key].join('/'), value)
end

def read key
  char_count = key.size
  first_char = key.chars.first
  last_char = key.chars.last

  key_path = [DB, char_count, first_char, last_char, key].join '/'

  File.read(key_path)
end