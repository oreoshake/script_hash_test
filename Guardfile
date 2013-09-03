# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'brakeman', :run_on_start => true, :quiet => true do
  watch(%r{^app/.+\.(erb|haml|rhtml|rb)$})
  watch(%r{^config/.+\.rb$})
  watch(%r{^lib/.+\.rb$})
  watch('Gemfile')
end
