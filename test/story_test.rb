require './test/test_helper'
require './lib/story'
require 'json'

class StoryTest < Minitest::Test

  def setup
    @story_1 =    Story.new({
                  :subsection => "subsection",
                  :title      => "title",
                  :abstract   => "abstract",
                  :link       => "link.com",
                  :published  => "published",
                  :photo      => "photo.com",
                  :section    => "section"
                  })
  end

  def test_it_exists
    assert_instance_of Story, @story_1
  end

  def test_it_has_attributes
    assert_equal "section",   @story_1.section
    assert_equal "subsection",@story_1.subsection
    assert_equal "title",     @story_1.title
    assert_equal "abstract",  @story_1.abstract
    assert_equal "link.com",  @story_1.link
    assert_equal "published", @story_1.published
    assert_equal "photo.com", @story_1.photo
  end

  def test_load_file
    assert_equal Story.load_file, @story_1
  end


end
