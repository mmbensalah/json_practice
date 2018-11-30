require 'json'
require 'pry'
require './lib/story'

raw_data   = File.read('./data/nytimes.json')
story_data = JSON.parse(raw_data)
parsed_json = story_data["results"]


story_objects = parsed_json.map do |story|
  Story.new(story)
end

puts story_objects
binding.pry
