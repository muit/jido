guard :bundler, cmd: "bundle install" do
  watch('Gemfile')
end

guard :rspec, cmd: "bundle exec rspec", all_after_pass: true do
  watch(%r{^lib/(.+)\.rb$})     { "spec" }
  watch(%r{^spec/(.+)\.rb$})     { "spec" }
end
