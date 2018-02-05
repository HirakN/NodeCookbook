# # encoding: utf-8

# Inspec test for recipe node::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# nginx
describe service('nginx') do
	it {should be_installed}
	it {should be_enabled}
end

describe package('nginx') do
	it {should be_installed}
end

describe port(80) do
	it {should be_listening}
end

# Shoud redirect to port 3000, so can check if it is a redirect (not port) by 301
describe http('http://localhost', enable_remote_worker: true) do
	its('status') {should cmp 502}
end

# node.js
describe package('nodejs') do
	it {should be_installed}
	its('version') {should match /6\../}
end

# This is an example test, replace it with your own test.
describe port(80) do
 	it {should be_listening}
end
