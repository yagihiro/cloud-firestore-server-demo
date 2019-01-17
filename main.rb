# frozen_string_literal: true

require 'dotenv/load'
require 'google/cloud/firestore'

firestore = Google::Cloud::Firestore.new


i = 0
loop do
  y = firestore.doc "sample1/doc#{i}"
  y.set(name: "NameName#{i}", age: i)
  i += 1
  puts i
  sleep 0.2
end