# Look at the tests in `spec/social_security_numbers_spec.rb`
# to see a description of how these methods should behave.


# Determine whether a string contains a Social Security Number.
def has_ssn?(string)
    /\d{3}\D\d{2}\D\d{4}/ === string
end

# Find and return a Social Security Number.
def grab_ssn(string)
  if /\d{3}\D\d{2}\D\d{4}/ === string
    string[/\d{3}\D\d{2}\D\d{4}/]
  else
    p ""
  end
end

# Find and return all Social Security Numbers.
def grab_all_ssns(string)
    string.scan(/\d{3}\D\d{2}\D\d{4}/)
end

# Obfuscate all Social Security Numbers. Example: XXX-XX-4430.
def hide_all_ssns(string)
  string.gsub(/\d{3}\D\d{2}/, 'XXX-XX')
end

# Format all Social Security Numbers to use single dashes for delimiters:
# '480014430', '480.01.4430', and '480--01--4430' would all be formatted '480-01-4430'.
def format_ssns(string)

  if string.scan(/X{3}-X{2}/).join == "XXX-XX"
    return string
  else  
    correct_ssn = []
    store = ""
    ssn = string.scan(/\d+.\d{2}.\d{4}|\d{3}--\d{2}--\d{4}/)
    ssn.each do |n| 
      correct_ssn << n.gsub(/(\d{3})[^\d]?[\--]?(\d{2})[^\d]?[\--]?(\d{4})/, '\1-\2-\3') 
    end
    correct_ssn.insert(1, ', ')
    correct_ssn.insert(3, ', and ')
    ssn_string = correct_ssn.join('')
    "The numbers are " + ssn_string
  end
end
