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
end

# Format all Social Security Numbers to use single dashes for delimiters:
# '480014430', '480.01.4430', and '480--01--4430' would all be formatted '480-01-4430'.
def format_ssns(string)
end
